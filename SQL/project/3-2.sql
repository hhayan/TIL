--장르별 상위 3개 아티스트 및 트랙 수
--각 장르별로 트랙 수가 가장 많은 상위 3명의 아티스트
--(artist_id, name, track_count)를 구하세요.
--동점일 경우 아티스트 이름 오름차순 정렬

WITH ranked_artists AS (
SELECT
	a.artist_id,
	a.name,
	t.genre_id,
	COUNT(t.track_id) AS 트랙수,
	RANK() OVER (PARTITION BY t.genre_id ORDER BY COUNT(t.track_id) DESC, a.name ASC) AS 순위
FROM artists a
INNER JOIN albums ab ON ab.artist_id = a.artist_id
INNER JOIN tracks t ON t.album_id = ab.album_id
GROUP BY a.artist_id, a.name, t.genre_id
)
SELECT
	artist_id,
	name,
	트랙수,
	순위
FROM ranked_artists
WHERE 순위 <= 3
ORDER BY 트랙수 DESC, name;

--궁금한게 ranked_artists 테이블에서 이미 RANK() OVER (PARTITION BY t.genre_id ORDER BY COUNT(t.track_id) DESC, a.name ASC) AS 순위
-- 정렬이랑 그룹핑을 했는데 또 ORDER BY genre_id, 트랙수 DESC, name ASC; 정렬을 해줘야함? 필수적으로?
