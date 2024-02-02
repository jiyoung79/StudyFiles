use testdb;
-- -------------------
-- JOIN
-- -------------------
-- 두개 이상의 테이블을 서로 묶어서 하나의 조회 결과를 만드는데 사용되는 쿼리 문법

-- JOIN 종류
-- ----------------------------------
-- INNER JOIN : ON 이하의 조건절을 만족하는 행만 JOIN
-- OUTER JOIN : ON 이하의 조건절을 만족하지 않는 행도 JOIN 
	-- LEFT OUTER JOIN : 조건을 만족하지 않는 왼쪽 테이블의 행도 JOIN
    -- RIGHT OUTER JOIN : 조건을 만족하지 않는 오른쪽 테이블의 행도 JOIN
	-- FULL OUTER JOIN : 조건을 만족하지 않는 왼쪽/오른쪽 테이블의 행도 JOIN
-- CROSS JOIN : 한 쪽 테이블의 모든 행과 반대쪽 테이블의 모든 행을 JOIN, 조건절 X
-- SELF JOIN : 한 테이블(자기자신)내에서 JOIN
-- CROSS와 SELF는 잘 사용하지 않음.

-- INNER JOIN 기본
use shopdb;
select * from usertbl;
select * from buytbl;

select * 
from usertbl 
inner join buytbl
on usertbl.userid = buytbl.userid;

-- INNER JOIN 원하는 열만 출력(열이름 중복시 특정 테이블의 열이름으로 선택해서 지정한다. ex) select usertbl.useid, ...)
select usertbl.userid, name, addr, mobile1, mobile2, prodname, price, amount  
from usertbl 
inner join buytbl
on usertbl.userid = buytbl.userid;


-- INNER JOIN (별칭지정)
select U.userid, name, addr, mobile1, mobile2, prodname, price, amount  
from usertbl U 
inner join buytbl B
on U.userid = B.userid;

-- WHERE 조건절 적용
select U.userid, name, addr, mobile1, mobile2, prodname, price, amount  
from usertbl U 
inner join buytbl B
on U.userid = B.userid
where amount <= 5;

-- 문제
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

-- OUTER JOIN

-- left Outer Join(on 조건을 만족하지 않는 left 테이블의 행도 출력)
use shopdb;
select *
from usertbl U					-- left table
left outer join buytbl B		-- right table
on U.userid = B.userid;

-- Right Outer Join(on 조건을 만족하지 않는 right 테이블의 행도 출력)
use shopdb;
select *
from buytbl B					-- left table
right outer join usertbl U		-- right table
on U.userid = B.userid;

-- Full Outer Join(on조건을 만족하지 않는 left, right 테이블의 행도 출력)
-- mysql 에서는 full outer join을 지원하지 않는다.
-- 대신 union을 사용해서 left, right outer join을 연결한다.
select * from usertbl left outer join buytbl on usertbl.userid = buytbl.userid 
union
select * from usertbl right outer join buytbl on usertbl.userid = buytbl.userid;

-- 여러 테이블들을 JOIN
use classicmodels;

select P.productCOde, productName, quantityOrdered, priceEach, O.orderDate, O.status
from products P
inner join orderdetails OD
on P.productCode = OD.productCode
inner join orders O
on O.orderNumber = OD.orderNumber;

