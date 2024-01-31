-- INSERT

use shopdb;
select * from tbl_buy_copy3;

-- 여러값 삽입
insert into tbl_buy_copy3 values
(13, 'aab', '운동화', '의류', 1000, 2),
(14, 'aac', '운동화', '의류', 1000, 2),
(15, 'aad', '운동화', '의류', 1000, 2),
(16, 'aae', '운동화', '의류', 1000, 2);

select * from tbl_buy_copy3;

-- auto_increment
desc tbl_a;
insert into tbl_a(name) values('홍길동');
insert into tbl_a(name) values('서길동');
insert into tbl_a(name) values('남길동');
select * from tbl_a;
insert into tbl_a values(null, '김민수');
select * from tbl_a;
delete from tbl_a;
select * from tbl_a;

-- auto_increment 초기화
alter table tbl_a auto_increment = 1;
insert into tbl_a(name) values('홍길동');
select * from tbl_a;


-- UPDATE



-- DELETE

