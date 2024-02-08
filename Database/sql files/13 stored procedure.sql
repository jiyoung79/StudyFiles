-- Stored Procedure
-- 예제 01

delimiter $$
create procedure pro1()
begin
	-- 변수 선언
	declare var1 int;
    -- 값 삽입
    set var1 = 100;
    -- if문(조건문)
    if var1 = 100 
		then
			select 'var1 은 100 입니다';
        else
			select 'var1 은 100 이 아닙니다.';
	end if;
end $$
delimiter ;

show procedure status;

call pro1();

-- ------------------------------------------------

-- 02 파라미터
delimiter $$
create procedure pro2(in param int)		-- 값을 1번에 1개만 받겠다는 뜻
begin
    -- if문(조건문)
    if param = 100 
		then
			select param, ' 은 100 입니다';
        else
			select param, ' 은 100 이 아닙니다.';
	end if;
end $$
delimiter ;

call pro2(100);	-- 100 은 100 입니다.
call pro2(120);	-- 120 은 100 이 아닙니다.


-- 03 
delimiter $$
create procedure pro3(in amt int)
begin
	select * from buytbl where amount >= amt;
end $$
delimiter ;

call pro3(4);
call pro3(7);

-- 04
delimiter $$
create procedure pro4(in amt int, in isGt int)	-- isGreater
begin
	if isGt != 0
		then
			select * from buytbl where amount >= amt;
		else
			select * from buytbl where amount >= amt;
	end if;
end $$
delimiter ;

call pro4(4,0);
call pro4(4,1);

-- 05
-- 테이블 만들 때 같이 설정하기
delimiter $$
create procedure pro5()	-- isGreater
begin
	declare avg_total_price double;
    set avg_total_price = (select avg(amount*price) from buytbl);
    select *, price*amount, if(price*amount >= @avg_total_price, '평균이상', '평균이하') as '평균이상/이하' from buytbl;
end $$
delimiter ;

-- 따로 빼서 설정하기
call pro5();
set @avr = (select avg(price*amount) from buytbl);
select @avr;
select *, price*amount, if(price*amount >= @avr, '평균이상', '평균이하') as '평균이상/이하' from buytbl;

-- 문제 01
use shopdb;
select * from usertbl;
select birthyear from usertbl;

delimiter $$
create procedure older(in param int)
begin
	select birthyear from usertbl where birthyear<=param;
end $$
delimiter ;

call older(1980);

-- 문제 02
select curdate();
select now();
select curtime();

select *, (datediff(curdate(),mDate)) as '근속일수' from usertbl;
select ceil(datediff(curdate(),mDate)/365) as '근속연수' from usertbl;

delimiter $$
create procedure workyear()
begin
	select *, 
    (datediff(curdate(),mDate)) as '근속일수',
    ceil(datediff(curdate(),mDate)/365) as '근속연수'
    from usertbl;
end $$
delimiter ;

call workyear();

-- -----------------------
-- 인자 2개
-- -----------------------
delimiter $$
create procedure pro6(in arg1 int, in arg2 int)
begin
	select * from usertbl where height between arg1 and arg2;
end $$
delimiter ;

call pro6(170,180);

-- 인자 3개
delimiter $$
create procedure pro7(in arg1 int, in arg2 int, in arg3 int)	-- 인자의 갯수는 무한하다.
begin
	select 
	*,
	case
		when amount >= arg1 then 'VIP'
		when amount >= arg2 then '우수'
		when amount >= arg3 then '일반'
		else '구매없음'
	end as 'GRADE'
	from buytbl;
end $$
delimiter ;

call pro7(5,3,1);


select 
*,
case
	when amount >= 10 then 'VIP'
    when amount >= 5 then '우수'
    when amount >= 1 then '일반'
    else '구매없음'
end as 'GRADE'
from buytbl;

-- 프로시저 + 반복문 - 1
delimiter $$
create procedure proc_while_1()
begin
	-- Hello World 를 10회 선언
	declare i int;
    set i = 1;
    while i <= 10 do
		select "Hello World";
        set i = i+1;
    end while;
    
end $$
delimiter ;

call proc_while_1(); 

-- 프로시저 + 반복문 - 2
delimiter $$
create procedure proc_while_2(in n int)
begin
	declare i int;
    set i = 1;
    while i <= n do
		select "Hello World";
        set i = i+1;
    end while;
    
end $$
delimiter ;

call proc_while_2(3);

-- 1 - 10 합
delimiter $$
create procedure proc_while_3()
begin
	declare i int;
    declare sum int;
    set i = 1;
    set sum = 0;
    while i <= 10 do
		set sum = sum + i;
        set i = i+1;
	end while;
    select sum;

end $$
delimiter ;

call proc_while_3();

-- 1 - N 합
delimiter $$
create procedure proc_while_4(in n int)
begin
	declare i int;
    declare sum int;
    set i = 1;
    set sum = 0;
    while i <= n do
		set sum = sum + i;
        set i = i+1;
	end while;
    select sum;

end $$
delimiter ;

call proc_while_4(3);

-- N - M 합
delimiter $$
create procedure proc_while_5(in n int, in m int)
begin
	declare i int;
    declare sum int;
	declare tmp int;
    if(n > m)
		then
			set tmp = n;
            set n = m;
            set m = tmp;
	end if;
    
    set i = n;
    set sum = 0;
    
    while i<=m do
		set sum = sum + i;
		set i = i + 1;
	end while;
    select sum;

end $$
delimiter ;

call proc_while_5(3,7);

-- 2단
create table tbl_googoodan(
	dan int , 
    i int , 
    result int
);
select * from tbl_googoodan;
delimiter $$
create procedure while02()
begin 
    declare i int ;
    set i = 1;
    
    while i<10 do
		insert into tbl_googoodan values(2, i, 2*i);
		set i = i+1;
    end while;
    select * from tbl_googoodan;
end $$
delimiter ;
call while02();

-- N단
create table googoodan(
	dan int , 
    i int , 
    result int
);
delimiter $$
create procedure while03(in n int)
begin 
    declare i int ;
    set i = 1;

    while i<10 do
		insert into googoodan values(n,i,n*i);
		set i = i+1;
    end while;
    select * from googoodan;
end $$
delimiter ;
call while03(7);
select * from googoodan;
