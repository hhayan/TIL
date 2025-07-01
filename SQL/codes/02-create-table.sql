USE lecture;

CREATE TABLE sample (
	name VARCHAR(30),
    age int
);

-- 테이블 삭제
DROP TABLE sample;

-- 테이블 확인
SHOW TABLES;

CREATE TABLE members(
	id INT AUTO_INCREMENT PRIMARY KEY, -- (정수 자동증가)
    name VARCHAR(30) NOT NULL, 
    email VARCHAR(100) UNIQUE, -- 중복불가
    join_date DATE DEFAULT(CURRENT_DATE) -- 가입일(기본값-오늘)
);

SHOW TABLES;
-- members 테이블을 상세히 확인(Describe)
DESC members;