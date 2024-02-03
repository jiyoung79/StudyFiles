# DDL, DCL, DML 정리

<hr>

## 1. DDL 이란?<br> 
* 테이블과 컬럼을 저의하는 명령어로 생성, 수정, 삭제 등의 데이터 전체 골격을 결정하는 역할을 담당한다.<br>
<br>
## 1-1. DDL 특징<br>
* DDL은 명령어를 입력하는 순간 작업이 즉시 반영(Auto Commit)되기 때문에 사용할 때 주의해야 한다.<br>
<br>
## 1-2. DDL 종류<br>

'CREATE : 테이블을 생성하는 역할<br>
ALTER	: 테이블의 구조를 수정하는 역할<br>
DROP : 테이블을 삭제하는 역할<br>
RENAME : 테이블을 이름을 변경하는 역할'<br>
<br>

'ALTER : 컬럼 변경 문법<br>
ADD COLUMN : 컬럼을 추가하는 역할<br>
DROP COLUMN	: 컬럼을 삭제하는 역할<br>
MODIFY COLUMN	: 컬럼을 수정하는 역할<br>
RENAME COLUMN	: 컬럼 이름을 변경하는 역할'<br>
<hr>

## 2.DML 이란?<br>
* 데이터베이스의 내부 데이터를 관리하기 위한 언어이다. 데이터를 조회, 추가, 변경, 삭제 등의 작업을 수행하기 위해 사용된다.<br>
<br>
## 2-1. DML 특징<br>
* DDL과 달리 DML은 적는 즉시 반영(Auto Commit)이 되기 않는다. 다시 말해, DML에 의한 데이터 변동은 영구적인 변경이 아니기 때문에 ROLLBACK으로 다시 되돌릴 수 있다.<br>
<br>
## 2-2. DML 종류]<br>
<br>
SELECT : 데이터베이스에서 데이터를 검색하는 역할<br>
INSERT : 테이블에 데이터를 추가하는 역할<br>
UPDATE : 테이블 내에 존재하는 데이터를 수정하는 역할<br>
DELETE : 테이블에서 데이터를 삭제하는 역할<br>
