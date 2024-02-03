# 외래키 지정<br>

## workbench에서 외래키(fk)를 지정할 때<br>

* fk_외래키가 포함된 테이블_기본기가 포함된 테이블

#### ex) <br>

```
	fk_registration_student_id
	fk_registration_lecture_id
```

<hr>

# SELECT<br>

### [SELECT sql문 1](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/01%20select.sql)
### [SELECT sql문 2](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/02%20select2.sql)

## 1. select<br>

* 의미 : 데이터 베이스 내의 테이블에서 원하는 정보를 가져오는데 사용되는 명령어<br>

```
자주 쓰이는 형식 : select 열이름 from 테이블이름 where 조건<br>
정확한 문법 : select 열이름1, 열이름2 ... from DB명.테이블명<br>
```


> #### 전체 DB확인
>     show databases;

> #### 테이블 상태 확인
>     show table status;

> #### 테이블 속성 정보 확인
>     desc 테이블명;

> #### 테이블 내 전체 열 가져오기
>     use 작업DB;
>     select * from 테이블명;

> #### 테이블 내 특정 열 가져오기
>     use 작업DB;
>     select 열이름 from 테이블명;

> #### 테이블 내 여러 열 가져오기
>     use 작업DB;
>     select 열이름, 열이름 ... from 테이블명

> #### 테이블 조회 시 열이름 별칭 지정
>     use 작업DB;
>     select 열이름 as 별칭 from 테이블명;

<hr>

### 1-1. select where(조건절 - 비교연산자) 예시<br>

    select * from usertbl where name='김경호'; -- 동등 비교 연산자(=)
    select * from usertbl where userId='LSG'; -- 동등 비교 연산자(=)
    select * from usertbl where birthyear >=1900; -- 대소 비교 연산자
    select * from usertbl where height <=178; -- 대소 비교 연산자

### 1-2. select where(조건절 - 논리연산자) 예시

```
- and 연산자(참 and 참) 을 만족하는 경우
select * from usertbl where birthyear >= 1970 and height >= 180;

- or 연산자(거짓 or 참, 참 or 거짓, 참 or 참) 을 만족하는 경우 
select * from usertbl where birthyear >= 1970 or height >= 180; 

select * from usertbl where height between 170 and 180;
```


### 1-3. in(포함문자열(완성된문자열)) , like(포함문자열(미완성된문자열 필터링)) 예시<br>

```
- in
select * from usertbl where addr in ('서울', '경남');
select * from usertbl where addr = '경남' or addr = '서울';

- like
select * from usertbl where name like '김%'; -- 길이 제한 없는 모든 문자
select * from usertbl where name like '%수'; -- 끝 글자가 '수'인 모든 문자
select * from usertbl where name like '김_'; -- _ 개수만큼의 길이 제한이 있는 모든 문자
```

### 1-4. '열이름'이 비어있지 않은 행만 출력<br>

>     select * from 테이블명 where 열이름 != 'null';
>     select * from 테이블명 where 열이름 <> 'null';

### 1-5. Select 조건절 - 서브쿼리 예시<br>

    select height from usertbl where name='김경호'; -- 김경호의 키
    select *from usertbl where height>(select height from usertbl where name='김경호');

### 1-6. Select Order by<br>

>     select * from 테이블명 order by 열이름 asc;
>     select * from 테이블명 order by 열이름 desc;

* asc : 오름차순(기본값)
* desc : 내림차순

### 1-7. distinct : 중복되는 값을 하나로 묶어주는데 사용<br>

>     select distinct 열이름 from 테이블명;

### 1-8. Limit<br>

>     select * from 테이블명 limit 3;
>     select * from 테이블명 limit 2,3; -> index 번호 2 부터 3개 나열

### 1-9. 복사(테이블 복사)<br>

* 구조 + 값 복사()<br>

```
 create table 복사한 새테이블명(select * from 복사할 기존테이블명);
	이 때 pk, fk는 원본으로부터 복사가 되지 않음
 
 create table 복사한 새테이블명(select 열이름1, 열이름2, ... from 복사할 기존테이블명);
	=> 기존 테이블명에서 복사하고싶은 열만 복사
```

<br>

* 구조만 복사(값X, PK O, FK X, Index O)<br>
    create table 복사한 새테이블명 like 복사할 기존테이블명;<br>

* 데이터만 복사<br>
    insert into 복사한 새테이블명 select * from 복사할 기존테이블명 where 복사할 데이터값;<br>

--------------------------------------------------------------------------------------------
## 2. GROUP BY<br>

### 2-1. select group by<br>

> group by 는 동일한 값을 가진 컬럼을 기준으로 그룹별 연산을 적용한다.
> 특정 컬럼들을 그룹화, 집계함수를 사용할 수 있음

* 총합
>     select 컬럼명, sum(더할 컬럼명) from 테이블명 group by 컬럼명;

#### ex) <br>

```
- userid 별 amount 총합(sum)
select userid, sum(amount) from buytbl group by userid;

- userid 별 amount*price의 총합(sum)
select userid, sum(amount*price) as '구매총액' from buytbl group by userid;
```

* 평균값
>    select avg(평균을 구하고싶은 컬럼명) from 테이블명;

* 소수점자리 지정
> ``` select 컬럼명, truncate(값, 소숫점자리) avg(평균값 컬럼명) as '지정할 이름' from 테이블명 group by 컬럼명; ```
> 
> ``` select userid, truncate(값, 소숫점자리) avg(amount*price) as '구매평균액' from buytbl group by userid; ```

* max, min
>     select max(컬럼명) from 테이블명;
>     select min(컬럼명) from 테이블명;

```
ex)
- 가장 큰 키를 가지는 user의 모든 열의 합
select *from usertbl where height = (select max(height) from usertbl);
select *from usertbl where height = (select min(height) from usertbl);

- 가장 큰 키와 가장 작은 키의 값만 확인
select *from usertbl where height = (select max(height) from usertbl) or height = (select min(height) from usertbl);
```

### 2-2. select group by + having<br>

> having 은 group by 절에 의해 생성된 결과값 중 원하는 조건에 부합하는 데이터만 보고자 할 때 사용<br>

>     select 컬럼명, sum(더할 컬럼명) as '이름지정' from 테이블명 group by 컬럼명 having sum(더할컬럼명) > 5
>     		->생성된 결과값							->원하는 조건(앞에서 생성된 결과값)

```
ex)
select userid, sum(amount) as '구매총량' from buytbl group by userid having sum(amount) > 5; -- ㅇ
select userid, sum(amount) as '구매총량' from buytbl group by userid having '구매총량' > 5; -- x 지정한 이름으로 불러오면 실행되지 않음

select userid, truncate(avg(amount*price), 2) as '구매평균액' from buytbl group by userid having truncate(avg(amount*price), 2); -- 집계결과에 대한 조건절
```

### 2-3. select + group by + rollup <br>

> 그룹별로 합계를 한 번에 구할 때 사용
> group by 뒤 기준들의 순서에 따라 with rollup의 결과도 달라짐

```
ex)
select num,groupname, sum(price*amount) from buytbl group by groupname, num with rollup;
select groupname, sum(price*amount) from buytbl group by groupname with rollup;
select userid, addr, avg(height) from usertbl group by addr, userid with rollup;
```

