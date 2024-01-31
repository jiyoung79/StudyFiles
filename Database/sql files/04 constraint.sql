-- 제약조건

-- PK
create table tbl_a(
id int primary key,
name varchar(45)
);
desc tbl_a;
insert into tbl_a values(2, '홍길동');
insert into tbl_a values(1, '홍길동');
select * from tbl_a;

create table tbl_b(
	id int,
    name varchar(45) not null,
    primary key(id)
);
desc tbl_b;

create table tbl_c(
	id int,
    name varchar(45) not null,
    primary key(id, name)
);
desc tbl_c;
select * from information_schema.columns where table_schema = 'shopdb' and column_key = 'PRI';

create table tbl_d(
	id int,
    name varchar(45) not null
);
desc tbl_d;
-- pk 추가
alter table tbl_d add constraint PK_tbl_d_id primary key(id,name);
desc tbl_d;

-- pk 제거
alter table tbl_d drop primary key;
desc tbl_d;

-- 문제 : buytbl의 구조+데이터 복사 및 num 을 pk로 설정
create table buytbl_copy (select * from buytbl);
desc buytbl_copy;
alter table buytbl_copy add constraint PK_buytbl_copy primary key(num);
desc buytbl_copy;

-- FK
create table tbl_a(
	id int primary key,
	name varchar(45)
);
desc tbl_a;

create table tbl_b(
	num int primary key,
	tbl_a_id int,
	name varchar(45),
    constraint fk_tbl_b_tbl_a foreign key(tbl_a_id) references tbl_a(id)
);
desc tbl_b;

-- FK Options
-- RESTRICT		:	PK, FK 열의 값을 변경 차단
-- CASCADE		:	PK열의 값 on Update, on Delete 이 변경 시 FK 열의 값도 함께 변경
-- SET NULL		:	PK열의 값이 변경시 FK 열의 값을 NULL로 설정
-- SET DEFAULT  :	PK열의 값이 변경시 FK 열의 값은 Default로 설정된 기본값을 적용
-- NO ACTION	:	PK열의 값이 변경시 FK 열의 값은 변경 되지 않음으로 설정

create table tbl_c(
	num int primary key,
	tbl_a_id int,
	name varchar(45),
    constraint fk_tbl_c_tbl_a foreign key(tbl_a_id) references tbl_a(id)
	on update cascade
    on delete set null
);
desc tbl_b;

-- 문제
-- buytbl을 copy_buytbl로 구조+데이터복사
create table copy_buytbl (select * from buytbl);
-- num을 PK 로 설정
alter table copy_buytbl add constraint PK_buytbl primary key(num);
desc copy_buytbl;
-- userid 를 FK로 설정(on delete restrict on update cascade)
alter table copy_buytbl add constraint fk_copy_buytbl_buytbl foreign key(userid) references buytbl(userid)
on update cascade
on delete restrict;


-- UNIQUE(중복허용 X, NULL o) - Email 등록
create table tbl_a
(
	id int primary key,
    name varchar(45),
    email varchar(100) unique
);
create table tbl_b
(
	id int primary key,
    name varchar(45),
    email varchar(100),
    constraint uk_email unique(email) 
);
create table tbl_c
(
	id int primary key,
    name varchar(45),
    email varchar(100)
);
desc tbl_c;
alter table tbl_c add constraint uk_tbl_c_email unique(email);
desc tbl_c;
alter table tbl_c drop constraint uk_tbl_c_email;
desc tbl_c;

-- CHECK
create table tbl_d(
	id int primary key,
    name varchar(50),
    age int check(age>=20 and age <= 50),
    addr varchar(5),
    constraint CH_ADDR check(addr in('대구', '부산', '대전')) 
);
desc tbl_d;

select * from information_schema.check_constraints;

alter table tbl_d drop check tbl_d_chk_1;
alter table tbl_d drop check CH_ADDR;
select * from information_schema.check_constraints;


-- DEFAULT
create table tbl_e(
	id int primary key,
    name varchar(45) default '이름없음',
    addr varchar(100) 
);
desc tbl_e;
insert into tbl_e values(1, '홍길동', null);
select * from tbl_e;
insert into tbl_e(id) values(2);
select * from tbl_e;

alter table tbl_e alter column addr set default '대구';
alter table tbl_e alter column addr drop default;
select * from tbl_e;


