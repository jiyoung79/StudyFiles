-- 00 확인

use shopdb;


show tables;
select * from usertbl;
select * from buytbl;
desc usertbl;
use usertbl;

-- 01 Select
select * from usertbl;
select userid,birthyear from usertbl;
select userid as '아이디', birthyear as '생년월일' from usertbl;
select
userid as '아이디', birthyear as '생년월일', concat(mobile1, '-', mobile2) as '연락처'
from usertbl;

-- 02 select where(조건절 - 비교연산자)

select * from usertbl where name='김경호'; -- 동등 비교 연산자(=)
select * from usertbl where userId='LSG'; -- 동등 비교 연산자(=)
select * from usertbl where birthyear >=1900; -- 대소 비교 연산자
select * from usertbl where height <=178; -- 대소 비교 연산자

-- 03 select where(조건절 - 논리연산자)
-- and 연산자(참 and 참) 을 만족하는 경우
select * from usertbl where birthyear >= 1970 and height >= 180;
-- or 연산자(거짓 or 참, 참 or 거짓, 참 or 참) 을 만족하는 경우 
select * from usertbl where birthyear >= 1970 or height >= 180; 

select * from usertbl where height>=170 and height<=180;
select * from usertbl where height between 170 and 180;

-- in(포함문자열(완성된문자열)) , like(포함문자열(미완성된문자열 필터링))
select * from usertbl where addr in ('서울', '경남');
select * from usertbl where addr = '경남' or addr = '서울';

select * from usertbl where name like '김%'; -- 길이 제한 없는 모든 문자
select * from usertbl where name like '%수'; -- 끝 글자가 '수'인 모든 문자
select * from usertbl where name like '김_'; -- _ 개수만큼의 길이 제한이 있는 모든 문자

-- 경 문자룰 포함하는 모든 이름 검색??
select * from usertbl where name like '%경%';

-- 문제풀기

select * from buytbl;
select * from buytbl where amount >=5;
select userID, prodName from buytbl where price between 50 and 500;
select * from buytbl where amount >=10 or price>=100;
select * from buytbl where userid like 'K%';
select * from buytbl where groupName in('서적', '전자');
select * from buytbl where prodName='책' or userid like '%W';

-- groupName 이 비어있지 않은 행만 출력
select * from buytbl where groupName != 'null';
select * from buytbl where groupName <> 'null';

-- 04 Select 조건절 - 서브쿼리
-- 김경호보다 큰 키를 가지는 모든 열의 값
select height from usertbl where name='김경호'; -- 김경호의 키
select *from usertbl where height>(select height from usertbl where name='김경호');

-- 성시경보다 나이가 많은 모든 열의 값 출력
select birthyear from usertbl where name='성시경'; -- 성시경의 나이
select * from usertbl where birthyear<(select birthyear from usertbl where name='성시경');
-- 지역이 경남인 height 보다 큰 행 출력
-- all(모든 조건을 만족하는)
select * from usertbl where height > all(select height from usertbl where addr in ('경남'));
-- any(어느 조건이든 하나 이상 만족)
select * from usertbl where height > any(select height from usertbl where addr in ('경남'));

-- 문제 buytbl
-- 1
select * from buytbl where price > any(select price from buytbl where amount='10');
-- 2
select * from buytbl where amount > (select amount from buytbl where userid='k%');
-- 3
select * from buytbl where price > all(select price from buytbl where amount=5);


-- 05 Select Order by
use shopdb;
select * from usertbl order by mDate asc;
select * from usertbl order by mDate desc;
select * from usertbl where birthyear >= 1970 order by mdate; -- birthyear의 설정기준을 만족하는 mdate의 오름차순
select * from usertbl order by height,name;

-- 06 distinct : 중복되는 값을 하나로 묶어주는데 사용
select distinct addr from usertbl; 

-- 07 Limit
select * from usertbl;
select * from usertbl limit 3;
select * from usertbl limit 2,3; -- index 번호 2 부터 3개 나열

-- 08 복사(테이블복사)
-- 08-01 구조 + 값 복사()
create table tbl_buy_copy(select * from buytbl);
select * from tbl_buy_copy;
desc tbl_buy_copy; -- pk, fk는 원본으로부터 복사가 되지 않음

create table tbl_buy_copy2(select userid,prodname,amount from buytbl);
select * from tbl_buy_copy2;

-- 08-02 구조만 복사(값X, PK O, FK X, Index O)
create table tbl_buy_copy3 like buytbl;
select * from tbl_buy_copy3;
desc tbl_buy_copy3; 

-- 08-03 데이터만 복사
insert into tbl_buy_copy3 select * from buytbl where amount >= 3;
select * from tbl_buy_copy3;

-- 문제
select * from buytbl order by userID;
select * from buytbl order by price desc;
select * from buytbl order by amount, prodName desc;
select distinct prodName from buytbl order by prodName; 
select distinct userid from buytbl;
select * from buytbl where amount >= 3 order by prodName asc;
create table CUsertbl (select addr from usertbl where addr in ('서울', '경기'));
select * from CUsertbl;






