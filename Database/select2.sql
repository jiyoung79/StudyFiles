-- 01 select group by
use shopdb;
-- userid 별 amount 총합(sum)
select userid, sum(amount) from buytbl group by userid;
-- userid 별 amount*price의 총합(sum)
select userid, sum(amount*price) as '구매총액' from buytbl group by userid;
-- 평균값
select userid, avg(amount) as '구매평균' from buytbl group by userid;
select userid, truncate(avg(amount*price), 2) as '구매평균액' from buytbl group by userid;
--
select max(height) from usertbl;
select min(height) from usertbl;

-- 가장 큰 키를 가지는 user의 모든 열의 합
select *from usertbl where height = (select max(height) from usertbl);
select *from usertbl where height = (select min(height) from usertbl);
-- 가장 큰 키와 가장 작은 키의 값만 확인
select *from usertbl where height = (select max(height) from usertbl) or height = (select min(height) from usertbl);

-- 문제
select userid, sum(amount) from buytbl group by userid;
select userid, avg(height) from usertbl group by userid;
select userid, max(amount) as '최대구매량' from buytbl group by userid;
select userid, min(amount) as '최소구매량' from buytbl group by userid;
select userid, amount from buytbl where amount = (select max(amount) from buytbl) or  amount = (select min(amount) from buytbl);
use classicmodels;
select city, avg(creditLimit) from customers group by city;
select orderNumber, sum(quantityOrdered) from orderdetails group by orderNumber;
select productVendor, sum(quantityInStock) from products group by productVendor;

-- 02 select group by + having
use shopdb;
select userid, sum(amount) as '구매총량' from buytbl group by userid having sum(amount) > 5; -- ㅇ
select userid, sum(amount) as '구매총량' from buytbl group by userid having '구매총량' > 5; -- x 

select userid, truncate(avg(amount*price), 2) as '구매평균액' 
from buytbl 
group by userid 
having truncate(avg(amount*price), 2); -- 집계결과에 대한 조건절

-- 03 select + group by + rollup

select num,groupname, sum(price*amount) from buytbl group by groupname, num with rollup;
select groupname, sum(price*amount) from buytbl group by groupname with rollup;
select userid, addr, avg(height) from usertbl group by addr, userid with rollup;

-- 문제
select userID, prodName, sum(Price*amount) from buytbl group by prodName, userid with rollup;
select userID, prodName, sum(Price*amount) from buytbl group by prodName, userid having sum(Price*amount) >= 1000;
select userid, prodName, price from buytbl where price = (select max(price) from buytbl) 
or price = (select min(price) from buytbl);
select groupname from buytbl;
select prodName, sum(price*amount) from buytbl group by prodName with rollup;





 

