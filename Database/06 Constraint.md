# 제약조건(constraint)
### [제약조건 sql문](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/04%20constraint.sql)

<hr>

## 1. PK<br>

* 테이블을 만들 때 PK 지정<br>

### 1-1. auto_increment<br>

> table을 만들 때 pk에서 AI를 선택하면 적용됨<br>

> 그 후 값을 넣어 출력하면 자동으로 순서 생성<br>

#### ex) <br>

```
insert into tbl_a(name) values('홍길동');
insert into tbl_a values(null, '김민수');
```

```
delete from 테이블명; 을 하고나면 숫자가 처음부터 매겨지지는 않는다.
			(이미 카운팅이 되었기 때문)
			(auto_increment를 초기화하면 처음부터 매겨짐)
```

<br>

### 1-2. auto_increment 초기화<br>

> ```alter table 테이블명 auto_increment = 초기화할 값;```

<br>

### 1-3. pk 제약조건<br>

* unique : 값이 중복되면 안된다<br>

* not null : 값이 없으면 안된다<br>

#### ex) <br>

```
	insert into tbl_a values(2, '홍길동');
	insert into tbl_a values(1, '홍길동');
	select * from tbl_a;
	-> 순서를 다르게 설정해도 asc로 정렬(기본값)
```

### 1-4. pk 추가<br>

> ```alter table 테이블명 add constraint PK명 primary key(추가할 pk명1, 추가할 pk명, ..);```

<br>

* 문제 : buytbl의 구조+데이터 복사 및 num 을 pk로 설정<br>

```
create table buytbl_copy (select * from buytbl);
desc buytbl_copy;	-> 확인
alter table buytbl_copy add constraint PK_buytbl_copy_num primary key(num);
desc buytbl_copy;	-> 확인
```

<hr>

## 2. FK<br>

* 구조
  
```
create table 테이블명(
	.... ,
	.... ,
	constraint 외래키명 foreign key(외래키열명) references tbl_a(기본키열명)
);
```


### 2-1. FK Options<br>

* RESTRICT	:	PK, FK 열의 값을 변경 차단<br>
* CASCADE		:	PK열의 값 on Update, on Delete 이 변경 시 FK 열의 값도 함께 변경<br>
* SET NULL	:	PK열의 값이 변경시 FK 열의 값을 NULL로 설정<br>
* SET DEFAULT  	:	PK열의 값이 변경시 FK 열의 값은 Default로 설정된 기본값을 적용<br>
* NO ACTION	:	PK열의 값이 변경시 FK 열의 값은 변경 되지 않음으로 설정<br>


### 2-2. 만들어진 테이블에서 FK 설정<br>

```
alter table 테이블명 add constraint FK명 foreign key(FK로 설정할 열이름) references 원래의 FK가 있는 테이블명(FK로 설정할 열이름)
on update 옵션명
on delete 옵션명;
```

#### ex) <br>

```
create table tbl_c(
	num int primary key,
	tbl_a_id int,
	name varchar(45),
    constraint fk_tbl_c_tbl_a foreign key(tbl_a_id) references tbl_a(id)
	on update cascade
    on delete set null
);
desc tbl_b;
```

* 문제

> 
```
1. buytbl을 copy_buytbl로 구조+데이터복사
create table copy_buytbl (select * from buytbl);

2. num을 PK 로 설정
alter table copy_buytbl add constraint PK_buytbl primary key(num);
desc copy_buytbl;

3. userid 를 FK로 설정(on delete restrict on update cascade)
alter table copy_buytbl add constraint fk_copy_buytbl_buytbl foreign key(userid) references buytbl(userid)
on update cascade
on delete restrict;
```

<hr>

## 3. UNIQUE<br>

> 컬럼의 값이 중복되지 않게 하는 제약이다.<br>

> 이것 때문에 테이블의 각 레코드는 유일한 레코드가 될 수 있다.<br>

<br>

* 주의할 점<br>

> PRIMARY KEY 제약은 자동적으로 UNIQUE 제약이 따라간다.<br>
> UNIQUE 는 한 테이블에 여러개를 지정할 수 있지만, PRIMARY KEY 제약은 오로지 1개 만 지정할 수 있다.<br>

<br>

* 테이블 만들 때 같이 만들기<br>

```
create table 테이블명(
    열이름 자료형 제약조건,
    열이름 자료형 제약조건,
        ... ,
    열이름 자료형 unique
);
```

* 테이블 생성된 이후 만들기<br>

```
alter table 테이블명 add constraint uk명 unique(설정할 열이름);
```

*  unique 삭제하기<br>

```
alter table 테이블명 drop constraint uk명;
desc 테이블명;
```

<hr>

## 4. CHECK <br>

> 특정 컬럼의 입력 가능한 값의 범위를 지정할 때 사용<br>

> 만약 어느 한 컬럼에 CHECK 제약조건을 설정한다면, 그 컬럼은 특정한 범위 안에서의 값만 허용한다.<br>

> 만약 어느 한 테이블에 CHECK 제약조건을 설정한다면, 그 레코드의 다른 컬럼을 기반으로 특정 컬럼의 값을 제한할 수도 있다.<br>

<br>

* 테이블 만들 때 같이 만들기<br>

```
create table 테이블명 (
    열이름 자료형 제약조건,
    열이름 자료형 제약조건,
        ... ,
    열이름 자료형 check(조건값)
);
```

* CHECK 제약조건에 이름을 설정하고, 두개 이상의 컬럼에 CHECK 제약조건을 적용할 경우<br>

```
create table 테이블명 (
    열이름 자료형 제약조건,
    열이름 자료형 제약조건,
        ... ,
    constraint CHK_명 check (조건값1 AND 조건값2)
);
```

* 테이블 생성된 이후 만들기<br>

> ```alter table 테이블명 add check (조건값);```

* 테이블 생성된 이후 check 제약 조건값 2개 이상 만들기<br>

> ```alter table 테이블명 add constraint CHK_명 check(조건값1 AND 조건값2);```

<hr>

## 5. DEFAULT<br>

> 한 컬럼에 동일한 값을 지정할 때 사용 <br>

* 테이블 만들 때 같이 만들기

```
create table 테이블명(
    열이름 자료형 제약조건,
    열이름 자료형 제약조건,
        ... ,
    열이름 자료형 default '값'
);
```

* 테이블 생성된 이후 만들기

> ```alter table 테이블명 alter column 열이름 set default '값';```

* Default 삭제하기

> 
```
alter table 테이블명 alter column 열이름 drop default;
select * from 테이블명;
```


