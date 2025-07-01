-- SELECT 컬럼 FROM 테이블 WEHRE 조건 ORDER BY 정렬기준 LiMIT 개수

 USE lecture;
 DROP TABLE studens;
 
 CREATE TABLE students(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20),
    age INT
 );
 
 DESC students;
 
 INSERT INTO students (name, age) VALUES
 ('유태영', 50),
 ('이재필', 30),
 ('김창휘', 20),
 ('오창휘', 25),
 ('공형규', 33),
 ('권태형', 18),
 ('유창준', 45),
 ('하준서', 10),
 ('이제웅', 88),
 ('박용호', 67);
 
 SELECT * FROM students;
 
 SELECT * FROM students WHERE name='박용호';
 SELECT * FROM students WHERE age >= 20;
 SELECT * FROM students WHERE age > 20;
 SELECT * FROM students WHERE id<>1; -- 해당 조건이 아닌
 SELECT * FROM students WHERE id!=1; -- 해당 조건이 아닌
 
 SELECT * FROM students WHERE age BETWEEN 20 AND 33; -- 20이상 33이하
 SELECT * FROM students WHERE id IN (1, 3, 5, 7);
 
-- 문자열 패턴 LIKE (%, _)
-- 이씨만 찾기
SELECT * FROM students WHERE name LIKE '이%';
-- 창씨만 찾기
SELECT * FROM students WHERE name LIKE '%창%';
-- 이름이 정확히 3글자인 유씨
SELECT * FROM students WHERE name LIKE '유__'; 
