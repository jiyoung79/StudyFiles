-- 내장함수
-- concat(), concat_ws()

select concat('hello', '-', 'world');
select concat_ws("-", 'hello', 'world', 5, 6);	-- 구분자를 앞에 두어서 문자열 뒤에 - 가 나옴

-- SubString()

select substring("HELLO WORLD", 6); -- 6 index 부터 마지막 문자까지
select substring("HELLO WORLD", 1, 7); -- 1 index 부터 7개 문자
select substring_index("HELLO MY NAME IS JUNG", " ",3);

select userid, substring_index(mDate, '-', 2) as '가입연월' from usertbl;

-- length()
select length("Hello World");	-- 문자의 길이(갯수)
select length(lastName) from classicmodels.employees;

-- Lower(), Upper() : 대소문자 변환

-- Trim() : 앞뒤 공백을 없애줌
select trim("       HELLO WORLD     ");

-- bin, oct, hex

select bin(1);
select bin(2);
select bin(3);
select bin(4);
select bin(5);
select bin(6);
select bin(7);
select bin(8);
select bin(9);
select bin(10);
select bin(11);
select bin(12);
select bin(13);
select bin(14);
select bin(15);
select bin(16);

-- reverse
select reverse('test');
-- space
-- repeat
select repeat('TEST', 3);
-- locate
-- format
-- replace
select replace('where we are', 'we', 'you'); 


-- 날짜관련 함수 생략
select Year(mDate) from usertbl;
select month(mDate) from usertbl;
select day(mDate) from usertbl;

select now();
select date(now());
select curdate();
select time(now());
select curtime();

-- 현재 날짜시간에서 연, 월, 일, 시, 분 , 초를 각각 추출해내고 다음과 같은 포맷팅으로 출력하세요
-- YYYY#MM#DD-hh:mm:ss
select date(now()), time(now());
select concat(
concat_ws("#", year(now()), month(now()), day(now())),
'-', 
time(now())) as '연월일시분초';

-- YYYY#MM#DD hh|mm|ss
select replace(curdate(), '-', '#');
select replace(curtime(),':','|');
select concat(replace(curdate(), '-', '#'), " ", replace(curtime(),':','|')) as '현재시간';

