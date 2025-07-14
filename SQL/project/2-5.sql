--각 고객의 최근 구매 내역
--각 고객별로 가장 최근 인보이스(invoice_id, invoice_date, total)

SELECT 
	c.customer_id,
	i.invoice_id,
	i.invoice_date,
	i.total
FROM invoices i
LEFT JOIN customers c ON i.customer_id = c.customer_id
GROUP BY c.customer_id,
	i.invoice_id,
	i.invoice_date,
	i.total
ORDER BY i.invoice_date;

-- 고객별 최근 구매내역: group by, order by로 가능한지?
