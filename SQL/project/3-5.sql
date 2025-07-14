--최근 1년간 월별 신규 고객 및 잔존 고객
--최근 1년(마지막 인보이스 기준 12개월) 동안,
--각 월별 신규 고객 수와 해당 월에 구매한 기존 고객 수를 구하세요.

WITH ph_date AS (
    SELECT
        c.customer_id,
        MIN(i.invoice_date) OVER (PARTITION BY c.customer_id) AS 최초구매일,
        TO_CHAR(i.invoice_date, 'YYYY-MM') AS 구매월
    FROM customers c
    INNER JOIN invoices i ON c.customer_id = i.customer_id
    WHERE i.invoice_date >= DATE '2024-07-11' AND i.invoice_date <= DATE '2025-07-11'
),
monthly_stats AS (
    SELECT
        구매월,
        COUNT(DISTINCT CASE WHEN TO_CHAR(최초구매일, 'YYYY-MM') = 구매월 THEN customer_id END) AS 신규고객수,
        COUNT(DISTINCT CASE WHEN TO_CHAR(최초구매일, 'YYYY-MM') != 구매월 THEN customer_id END) AS 잔존고객수
    FROM ph_date
    GROUP BY 구매월
)
SELECT
    구매월,
    신규고객수,
    잔존고객수
FROM monthly_stats
ORDER BY 구매월;