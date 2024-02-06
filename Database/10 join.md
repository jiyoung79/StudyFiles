# JOIN
### [join sql문](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/09%20join.sql)
<hr>

## 1. Join <br>

> 두개 이상의 테이블을 서로 묶어서 하나의 조회 결과를 만드는데 사용되는 쿼리 문법

## 1-1. JOIN 종류<br>

### INNER JOIN <br>

> ON 이하의 조건절을 만족하는 행만 JOIN <br>

### OUTER JOIN <br>

> ON 이하의 조건절을 만족하지 않는 행도 JOIN  <br>

### LEFT OUTER JOIN <br>

> 조건을 만족하지 않는 왼쪽 테이블의 행도 JOIN <br>

### RIGHT OUTER JOIN <br>

> 조건을 만족하지 않는 오른쪽 테이블의 행도 JOIN <br>

### FULL OUTER JOIN <br>

> 조건을 만족하지 않는 왼쪽/오른쪽 테이블의 행도 JOIN <br>

### CROSS JOIN <br>

> 한 쪽 테이블의 모든 행과 반대쪽 테이블의 모든 행을 JOIN, 조건절 X <br>

### SELF JOIN <br>

> 한 테이블(자기자신)내에서 JOIN <br>
> CROSS와 SELF는 잘 사용하지 않음. <br>

<hr>

## 1-2. INNER JOIN (기본) <br>

```
SELECT 열 목록
FROM 첫 번째 테이블
    INNER JOIN 두 번째 테이블
    ON 조인 조건
```

### ex) <br>

```
use shopdb;
select * from usertbl;
select * from buytbl;

select * 
from usertbl 
inner join buytbl
on usertbl.userid = buytbl.userid;
```

<hr>


* ### INNER JOIN 원하는 열만 출력(열이름 중복시 특정 테이블의 열이름으로 선택해서 지정한다. ex) select usertbl.useid, ...) <br>

### ex) <br>

```
select usertbl.userid, name, addr, mobile1, mobile2, prodname, price, amount  
from usertbl 
inner join buytbl
on usertbl.userid = buytbl.userid;
```

<hr>


### * INNER JOIN (별칭지정) <br>

### ex) <br>

```
select U.userid, name, addr, mobile1, mobile2, prodname, price, amount  
from usertbl U 
inner join buytbl B
on U.userid = B.userid;
```
-> U와 B가 별칭

<hr>


### * WHERE 조건절 적용 <br>

```
SELECT 열 목록
FROM 첫 번째 테이블
    INNER JOIN 두 번째 테이블
    ON 조인 조건
WHERE 검색 조건 
```

### ex)  <br>

```
select U.userid, name, addr, mobile1, mobile2, prodname, price, amount  
from usertbl U 
inner join buytbl B
on U.userid = B.userid
where amount <= 5;
```

<hr>


### 문제 <br>

```
-- 1. 바비킴의 userid, birthyear, prodname, groupname 출력
select usertbl.userid, birthyear, prodname, groupname 
from usertbl 
inner join buytbl
on usertbl.userid = buytbl.userid 
where name='바비킴';

-- 2. amount*price 의 값이 100 이상인 행의 name, addr, prodname, mobile1- mobile2를(concat사용) 출력하세요
select name, addr, prodname,
concat(mobile1, '-', mobile2) as 'PHONE'
from usertbl
inner join buytbl
where amount*price >= 100;

-- 3. groupname이 '전자'인 행의 userid, name, birthyear, prodname을 출력하세요.
select U.userid, name, birthyear, prodname
from usertbl U
inner join buytbl B
where groupname = '전자';
```

<hr>

## 1-3. OUTER JOIN <br>

```
SELECT 열 목록
FROM 첫 번째 테이블(LEFT 테이블)
    LEFT | RIGHT | FULL OUTER JOIN 두 번째 테이블(RIGHT 테이블)
     ON 조인 조건
WHERE 검색 조건      -> 생략가능
```

<hr>

### * left Outer Join(on 조건을 만족하지 않는 left 테이블의 행도 출력) <br>

### ex) <br>

```
use shopdb;
select *
from usertbl U					-- left table
left outer join buytbl B		-- right table
on U.userid = B.userid;
```

<hr>

### * Right Outer Join(on 조건을 만족하지 않는 right 테이블의 행도 출력) <br>

### ex) <br>

```
use shopdb;
select *
from buytbl B					-- left table
right outer join usertbl U		-- right table
on U.userid = B.userid;
```

<hr>

### * Full Outer Join(on조건을 만족하지 않는 left, right 테이블의 행도 출력) <br>

> mysql 에서는 full outer join을 지원하지 않는다. <br>
> 대신 union을 사용해서 left, right outer join을 연결한다. <br>

### ex) <br>

```
select * from usertbl left outer join buytbl on usertbl.userid = buytbl.userid 
union
select * from usertbl right outer join buytbl on usertbl.userid = buytbl.userid;
```

<hr>

## 1-4. 여러 테이블들을 JOIN <br>

```
SELECT 열 목록
FROM 첫 번째 테이블
    INNER JOIN 두 번째 테이블
    ON 조인 조건
    INNER JOIN 세 번째 테이블
    ON 조인 조건
```

### ex) <br> 

```
use classicmodels;

select P.productCOde, productName, quantityOrdered, priceEach, O.orderDate, O.status
from products P
inner join orderdetails OD
on P.productCode = OD.productCode
inner join orders O
on O.orderNumber = OD.orderNumber;
```
