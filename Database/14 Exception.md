# Exception <br>
### []()

<hr>

## 1. Exception <br> 

> 경미한 오류의 일종 <br>

> 실행 오류의 하위 카테고리 <br>

> 예외 발생시 전체 프로그램의 Runtime이 유지되도록 상황을 처리하는 작업 <br>

### ex 1) <br>

```
[예외발생]

use shopdb;
select * from usertbl; 
select * from notable;
select * from buytbl;

insert into usertbl values(5);
-- 01,02
delimiter $$
create procedure Exception_Test02()
begin
	declare continue handler for 1146 select '해당 테이블이 없어요..' as 'Error_msg';
   	declare continue handler for 1136 select 'Insert시 value의 column이 다릅니다..' as 'Error_msg';

	select * from usertbl; 
	select * from notable;
	select * from buytbl;
    insert into usertbl values(1);
    select 'Result' as '끝';
end $$
delimiter ;

call Exception_Test02();
=> 'select * from notable;' 때문에 해당 그리드 창에는 '해당 테이블이 없어요..' 라고 뜬다.
=> 'insert into usertbl values(1);' 때문에 해당 그리드 창에는 'Insert시 value의 column이 다릅니다..' 라고 뜬다.

show errors; => 모든 에러를 보여준다.
```

### ex 2) <br>

```
[모든예외받기]

delimiter $$
create procedure Exception_Test03()
begin
	declare continue handler for SQLEXCEPTION select '예외가 발생했어요..' as 'Error_msg';

	select * from usertbl; 
	select * from notable;
	select * from buytbl;
    insert into usertbl values(1);
    select 'Result' as '끝';
end $$
delimiter ;

call Exception_Test03();
=> 'select * from notable;' 때문에 해당 그리드 창에는 '예외가 발생했어요..' 라고 뜬다.
=> 'insert into usertbl values(1);' 때문에 해당 그리드 창에는 '예외가 발생했어요..' 라고 뜬다.
=> 마지막 그리드창에는 '끝' 이라고 뜬다.
```

### ex 3) <br>

```
[예외 코드 확인]

drop procedure Exception_Test04;
delimiter $$
create procedure Exception_Test04()
begin
	declare continue handler for SQLEXCEPTION 
    begin
		show errors;
    end;

	select * from usertbl; 
	select * from notable;
	select * from buytbl;
    insert into usertbl values(1);
    select 'Result' as '끝';
end $$
delimiter ;
call Exception_Test04();
=> 오류에 해당되는 그리드 창에는 해당되는 오류에 대한 정보가 표시된다.
```

<hr>









