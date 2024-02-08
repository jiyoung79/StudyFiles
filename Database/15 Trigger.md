# Trigger <br>
### []()

<hr>

## 1. Trigger <br>

> 특정 테이블에서 어떤 이벤트가 발생했을 때 자동으로 실행되는 것

### 1-1. Trigger의 종류 <br>

* BEFORE 트리거 <br>

> 이벤트 발생 이전에 작동되는 트리거 <br>

> insert, update, delete 이벤트로 작동 <br>

> 미리 데이터를 확인 가능하다. <br> 

* AFTER 트리거 <br>

> insert, update, delete 등의 작업이 일어났을 때 작동하는 크리거 <br>

<hr>

## 2. AFTER 트리거 <br>

##### 임시테이블

> new : 트리거 대상 테이블에 값 삽입전 내용저장

> old : 트리거 대상 테이블에 값 수정 / 삭제 후 내용저장

``` insert 새값 ``` -> ``` new 새값(임시저장) ``` -> ``` 기존테이블 새값삽입 ```

``` delete 예전 값 ``` -> ``` 기존테이블 예전값 삭제 ``` -> ``` old 예전값(임시) ```

``` update 새값, 예전값 ``` -> ``` new 새값(임시저장) ``` -> ``` 기존테이블 예전값 삭제, 새값삽입 ``` -> ``` old 예전 값 ```

### ex) <br>

```

drop table c_usertbl;
create table c_usertbl select * from usertbl;
select * from c_usertbl;
create table c_usertbl_bak like c_usertbl;	-- 구조복사
select * from c_usertbl_bak;
alter table c_usertbl_bak add column type char(5);
alter table c_usertbl_bak add column U_D_date char(5);
alter table c_usertbl_bak change column U_D_date U_D_date datetime;
desc c_usertbl_bak;
select * from c_usertbl_bak;

-- 01 수정 트리거
delimiter $$
create trigger trg_c_usertbl_update
after update		-- update 후 trigger
on c_usertbl
for each row		-- 각각의 내용을 실행
begin
	insert into c_usertbl_bak values(
    old.userid,old.name,old.birthyear,old.addr,old.mobile1,old.mobile2,old.height,
    old.mDate,'수정',now()
    );
end $$
delimiter ;

show triggers;
show create trigger trg_c_usertbl_update;

select * from c_usertbl;
select * from c_usertbl_bak;
update c_usertbl set name='바비' where userid='BBK';
update c_usertbl set addr='경남' where userid='EJW';


-- 02 삭제 트리거
delimiter $$
create trigger trg_c_usertbl_delete
after delete
on c_usertbl
for each row
begin
	insert into c_usertbl_bak values(
    old.userid,old.name,old.birthyear,old.addr,old.mobile1,old.mobile2,old.height,
    old.mDate,'삭제',now()
    );
end $$
delimiter ;

select * from c_usertbl;
delete from c_usertbl where userid='KKH';
select * from c_usertbl_bak;

```
