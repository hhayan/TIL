--2020년 이전에 가입한 고객 목록
--2020년 1월 1일 이전에 첫 인보이스를 발행한 고객의
--customer_id, first_name, last_name, 첫구매일을 조회하세요.

SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	MIN(i.invoice_date) AS 첫구매일
FROM invoices i
JOIN customers c ON i.customer_id = c.customer_id
WHERE i.invoice_date < '2020-01-01'
GROUP BY c.customer_id,c.first_name,c.last_name
ORDER BY 첫구매일;