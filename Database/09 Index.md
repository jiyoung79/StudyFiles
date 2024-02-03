# Index
### [index sql문](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/08-1%20index.sql)
### [index 예제](https://github.com/jiyoung79/StudyFiles/blob/main/Database/sql%20files/08-2%20index.sql)
<hr>
1. INDEX
-- --------------
-- 데이터 베이스 테이블의 검색 성능을 향상시키 이해 사용되는 데이터 구조
-- where 이하 조건절열에 Index로 지정된 열을 사용한다
-- Index로 지정된 열은 기본적으로 정렬 처리가 된다
-- Unique Index(PK,Unique제약조건시 기본설정됨)와 Non_unique Index 로 나눠진다

-- MYSQL INDEX 종류
-- B-Tree :기본값 , 대부분의 데이터 Index에 잘 적용되어 사용 
-- Hash : 해시 함수를 이용한 Index, 정확한 일치 검색에 사용
-- Full-text : 전체 텍스트 검색에 사용되는 Index , 텍스트 검색기능 향상
-- Spatial : 공간데이터(위도/경도 등)을 처리하기 위한 Index, 지리 정보검색에 유리
