-- 트랙(곡)별 단가와 재생 시간 조회
-- tracks 테이블에서 각 곡의 name, unit_price, milliseconds를 조회하세요.
-- 5분(300,000 milliseconds) 이상인 곡만 출력하세요.

SELECT a.title, t.unit_price, t.milliseconds
FROM tracks t
LEFT JOIN albums a ON t.album_id = a.album_id
WHERE milliseconds > 300000;
