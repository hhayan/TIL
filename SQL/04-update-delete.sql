SELECT * FROM members;

-- UPDATE(데이터 수정)
UPDATE members SET name='홍길동', email='hong@a.com' WHERE id=4;
-- 원치 않는 케이스(name이 같으면 동시 수정)
UPDATE members SET name='NO name' WHERE name='유유유';

-- DELETE(데이터 삭제)
DELETE FROM members WHERE id=3;

-- 테이블 모든 데이터 삭제(위험)
DELETE FROM members;
