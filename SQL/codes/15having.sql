USE lecture;

SELECT
	category,
    COUNT(*) AS 주문건수,
    SUM(total_amount) AS 총매출액
FROM sales
WHERE total_amount >= 100000 -- 원본 데이터에 필터링을 걸고, grouping
GROUP BY category;


SELECT
	category,
    COUNT(*) AS 주문건수,
    SUM(total_amount) AS 총매출액
FROM sales
GROUP BY category
HAVING SUM(total_amount) >= POWER(10, 6); -- 피벗테이블에 필터 추가

-- 활성 지역 찾기(주문건수 >= 20, 고객수 >= 15)
SELECT
	region AS 지역,
    COUNT(*) AS 주문건수,
    COUNT(DISTINCT customer_id) AS 고객수,
    SUM(total_amount) AS 총매출액,
    ROUND(AVG(total_amount)) AS 평균주문액
FROM sales
GROUP BY region
HAVING 주문건수 >= 20 AND  고객수 >= 15;

-- 우수 영업사원 -> 달 평균 매출액이 50만원 이상
SELECT
	sales_rep AS 영업사원,
    COUNT(*) AS 사원별판매건수,
    COUNT(DISTINCT customer_id) AS 사원별고객수, -- 'sales_rep'별 
	SUM(total_amount) AS 사원별총매출,
    COUNT(DISTINCT DATE_FORMAT(order_date, '%Y-%m'))AS 활동개월수,
    SUM(total_amount)/COUNT(DISTINCT DATE_FORMAT(order_date, '%Y-%m'))AS 월평균매출
FROM sales
GROUP BY sales_rep
HAVING 월평균매출 >= 500000
ORDER BY 월평균매출 DESC;