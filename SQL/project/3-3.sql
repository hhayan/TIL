--고객별 누적 구매액 및 등급 산출
--각 고객의 누적 구매액을 구하고,
--상위 20%는 'VIP', 하위 20%는 'Low', 나머지는 'Normal' 등급을 부여하세요.

WITH tot AS(
SELECT 
	c.customer_id,
	c.first_name,
	SUM(it.unit_price * it.quantity) OVER(PARTITION BY c.customer_id) AS 누적액
FROM customers c
INNER JOIN invoices i ON c.customer_id = i.customer_id
INNER JOIN invoice_items it ON i.invoice_id = it.invoice_id
),
ranked AS(
SELECT
	customer_id,
	first_name,
	NTILE(5) OVER (ORDER BY 누적액 DESC) as 누적등급
FROM tot
)
SELECT
	customer_id,
	first_name,
	CASE
		WHEN 누적등급 = 1 THEN 'VIP'
		WHEN 누적등급 = 5 THEN 'Low'
		ELSE 'Normal'
	END AS 고객등급
FROM ranked
GROUP BY customer_id,first_name, 고객등급;

