--월별 매출 및 전월 대비 증감률
--각 연월(YYYY-MM)별 총 매출과, 전월 대비 매출 증감률을 구하세요.
--결과는 연월 오름차순 정렬하세요.

WITH monthly AS(
	SELECT
	TO_CHAR(i.invoice_date, 'YYYY-MM') AS 연월,
	SUM(IT.unit_price * IT.quantity) AS 월매출
FROM invoices I
RIGHT JOIN invoice_items IT ON I.invoice_id = IT.invoice_id
GROUP BY 연월
),
monthly_sales AS
	(SELECT
	연월,
	월매출,
	LAG(월매출, 1) OVER (ORDER BY 연월) AS 전달매출
FROM monthly
)
SELECT
	연월,
	월매출,
	전달매출,
	CASE
		WHEN 전달매출 IS NULL THEN NULL
		ELSE ROUND((월매출 - 전달매출) * 100 / 전달매출, 2)::TEXT || '%'
	END AS 매출증감률
FROM monthly_sales
ORDER BY 연월;

-- 이달매출? 월매출이 헷갈림.. partition by? 이미 처음에 연월로 group by해서
-- 안해도 되지 않노
