-- 01 변수
-- 변하는 수
-- 수(Data, 자료)는 기본 선저장, 후처리를 원칙으로 한다.
-- 저장된 수가 특정상황에 있어 바뀔 가능성이 있는 경우 이 수를 변수라고 한다.

use shopdb;
set @var1 = 5;
set @var2 = 4.56;
set @var3 = "가수이름=>";

select @var1;
select @var2;
select @var3;
select @var1+@var2;		-- 형변환 이후 연산처리(형변환 : 데이터 손실을 최소화하는 방향으로 자료형을 일치시켜주는 작업)

select * from usertbl;
select @var3 as 'TITLE', name, addr from usertbl;

-- LIMIT 에서 변수사용
set @rowcnt = 3;
prepare sqlQuery01
from 'select * from usertbl order by height limit ?';	-- ? : 변수가 들어갈 공간
execute sqlQuery01 using @rowcnt;

-- 형변환
select mdate from usertbl;
select cast('2013$05$05' as date);
select cast('2014$03$03' as date);

select 
num, 
concat(cast(price as char(10)),' X ', cast(amount as char(10)), "=") as '가격 X 수량' ,
price*amount as '결과값'
from buytbl;

select 100 + 200;
select '100' + 200;		-- 문자열로 바뀌었지만 숫자 형태로 파싱
select '100' + '200';
select 'a100' + '200' + '200';
select 'a100' * 1;		-- 'a100'인 문자열을 0으로 인식 (숫자형태로 형변환하지 못해 0으로 됨)
select '10a0' + '200' + '300'; -- 하나하나 해석을 하기 때문에 '10a0'는 10에서 끊겨버림
select concat('100','200');
select concat(100,'200');
select 0 = 'mega2';
select 3 > '2MEGA';

-- 기본적으로 형변환 이후 연산처리가 됨

-- 숫자 비교연산의 결과 (참 : 1, 거짓 : 0)
select 1 > 2;		-- 거짓이기 때문에 0이 나옴
select 2 > '1abd';		-- 연산작업 전 문자열을 숫자형태로 파싱해주기 때문에 결과값은 '참'이 나옴
select 0 = 'mega';
select 1 > '2mega';

-- 문제
-- usertbl의 평균키를 구하라(cast이용)
select * from usertbl;
select avg(height) from usertbl;
select cast(avg (height) as signed int) as '평균키' from usertbl;
-- '2020년 5월 7일' 문자열을 date 자료형으로 바꿔서 출력
 select cast('2020-05-07' as date);
 



