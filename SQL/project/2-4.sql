--국가별 총 매출 집계 (상위 10개 국가)
--국가(billing_country)별 총 매출을 집계해,
--매출이 많은 상위 10개 국가의 국가명과 총 매출을 출력하세요.

SELECT
	I.billing_country,
	IT.unit_price,
	IT.quantity,
	sum(IT.unit_price * IT.quantity) AS 국가별총매출
FROM invoices I
RIGHT JOIN invoice_items IT ON I.invoice_id = IT.invoice_id
GROUP BY I.billing_country,
	IT.unit_price,
	IT.quantity
ORDER BY 국가별총매출 DESC;
