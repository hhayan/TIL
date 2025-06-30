USE lecture;
DESC members;

-- 데이터 입력(create)
INSERT INTO members (name, email) VALUES('현하얀', 'me@a.com');
INSERT INTO members (name, email) VALUES('김김김', 'kim@a.com');

-- 여러줄, (col1, col2) 순서 잘 맞추기!
INSERT INTO members (email, name) VALUES
('nan@a.com', '나나나'),
('da@a.com', '다다다');

-- 데이터 조회(read)
SELECT * FROM members;
-- 단일 데이터 조회
SELECT * FROM members WHERE id=1;
