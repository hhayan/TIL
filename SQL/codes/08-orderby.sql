USE lecture;
-- 특정 컬럼을 기준으로 정렬함
-- ASC 오름차순 | DESC 내림차순
SELECT * FROM students;

SELECT * FROM students ORDER BY name;
SELECT * FROM students ORDER BY name ASC;
SELECT * FROM students ORDER BY name DESC;

-- 테이블 구조 변경 -> 컬럼 추가 -> grade VARCHAR(1)
ALTER TABLE students ADD COLUMN grade VARCHAR(1) DEFAULT 'B';

UPDATE students SET grade = 'A' WHERE id BETWEEN 1 AND 3;
UPDATE students SET grade = 'C' WHERE id BETWEEN 8 AND 10;

#다중 컬럼 정렬 -> 앞에 말한게 우선 정렬
SELECT * FROM students ORDER BY
age ASC,
grade DESC;

SELECT * FROM students ORDER BY
grade DESC,
age ASC;

-- 나이가 40 미만인 학생들 중에서 학점 좋은 사람들
SELECT * FROM students
WHERE age <40
ORDER BY grade, age DESC
LIMIT 5;