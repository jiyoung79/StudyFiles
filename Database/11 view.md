# VIEW <br>
### [VIEW sql문](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/10%20view.sql)

<hr>

## 1. VIEW <br>

> 데이터베이스에 존재하는 가상의 테이블을 의미 <br>
> 실제로 행과 열이 존재하지만 데이터를 가지고 있는 것은 아님 <br>
> 다른 테이블이나 다른 뷰에 존재하는 데이터를 보여주는 역할만 수행 <br>

### VIEW 특징 <br>

> 실제 데이터를 저장하지 않고 다른 테이블에 있는 데이터를 보여주는 역할. <br>
> 뷰테이블이 바라보고 있는 테이블을 수정하면 뷰테이블도 같이 반영 <br>
> 특정 사용자에게 테이블의 모든 데이터를 보여주는 게 아닌 필요한 데이터만 추출하여 보여줄 수 있음 <br>

<hr>

## 1-2. create view 명령어로 테이블 생성하기 <br>

```
select * from 테이블명

create view 뷰이름
select 열목록
from 바라볼 테이블 명
```

<hr>

## 1-3. create or replace view 명령어로 테이블 생성하기 <br>

```
create or replace view 뷰이름
select *
from 바라보는 테이블 명
```

-> 기존에 똑같은 이름의 view 테이블이 있다면 덮어쓰거나, 없다면 새로 생성 <br>

```
01
use shopdb;
select * from usertbl;
select * from buytbl;

create or replace view view_usertbl
as
select userid, name, concat(mobile1, '-', mobile2) as phone
from usertbl;

select * from view_usertbl;

---------------------------------------------------

02
create or replace view view_usertbl_2
as
select userid, name, concat(mobile1, '-', mobile2) as phone
from usertbl
where addr in ('서울','경기','경남');

select * from view_usertbl_2;

select * from information_schema.views where table_schema = 'shopdb';

----------------------------------------------------

03
create or replace view view_user_buytbl
as
select U.userid, addr, concat(mobile1, '-', mobile2) as phone, prodname, amount
from usertbl U
inner join buytbl B
on U.userid = B.userid;

select * from view_user_buytbl;
select * from view_user_buytbl where amount >=5;
desc usertbl;
```

<hr>

## 1-4. view 테이블에 값 넣기 (제약조건 잘 확인해야함)

### ex) <br>

```
create view view_test
as
select userid, name, birthyear, addr, height from usertbl;

select * from view_test;
insert into view_test values('aaa', '에이', 1999, '경기', 188);
```

<hr>

## 1-5. view 수정 <br>

```
create or replace view 뷰이름
select *
from 바라보는 테이블 명
```

<hr>

## 1-6. view 삭제 <br>

```
drop view 뷰이름
```

-> view가 삭제된다고 해서 바라보고 있는 테이블이 삭제되는 것은 아님

* 문제 <br>
  
> classicmodels 에서 product, orderdetails, orders에 대한 관계도를 확인해서 <br>
> 열항목이 productname, productvendor, quantityordered, priceeach, orderdate가 포함된 <br>
> view_product_order 을 만들어보세요. 이 때 quantityOrdered가 5 이상인 값만 포함되어야 합니다. <br>

```
use classicmodels;

create or replace view view_product_order
as
select productname, productvendor, quantityordered, priceeach, orderdate
from products P
inner join orderdetails OD
on P.productCode = OD.productCode
inner join orders O
on O.orderNumber = OD.orderNumber
where quantityordered >= 25
;

select * from view_product_order; 
```










