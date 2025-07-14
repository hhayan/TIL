-- 직원별 담당 고객 수 집계
-- 각 직원(employee_id, first_name, last_name)이 담당하는 고객 수를 집계하세요.
-- 고객이 한 명도 없는 직원도 모두 포함하고, 고객 수 내림차순으로 정렬하세요.

SELECT
	COUNT(DISTINCT c.customer_id) AS 고객수,
	c.employee_id,
	c.first_name,
	c.last_name
FROM employees e
LEFT JOIN customers c ON e.support_rep_id = c.support_rep_id
GROUP BY employee_id
ORDER BY 고객수 DESC;

SELECT * FROM employees;
SELECT * FROM customers;

-- join 컬럼? 조인 기준?