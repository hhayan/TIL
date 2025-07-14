-- 국가별 재구매율(Repeat Rate)
--각 국가별로 전체 고객 수, 2회 이상 구매한 고객 수, 재구매율을 구하세요.
--결과는 재구매율 내림차순 정렬.

WITH contry_customer AS(
SELECT
	i.customer_id, -- 삭제할 경우
	c.country,
	COUNT(i.customer_id) AS 주문횟수	
FROM customers c
INNER JOIN invoices i ON c.customer_id = i.customer_id
GROUP BY c.country, i.customer_id
),
vip_customer AS
(
SELECT 
	country,
	COUNT(*) AS 전체고객수,
	COUNT(CASE WHEN 주문횟수 >= 2 THEN 1 END) AS 재구매고객
FROM contry_customer
GROUP BY country
)
SELECT
	country,
	전체고객수,
	재구매고객,
	(재구매고객 / 전체고객수) * 100 AS 재구매율
FROM vip_customer
ORDER BY 재구매율 DESC;

--처음 설계를 잘 못함
--group by가 with에서 여러번 쓰일 때

