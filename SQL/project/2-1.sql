-- 직원별 /  담당 고객 / 수 집계
-- 각 직원(employee_id, first_name, last_name)이 담당하는 고객 수를 집계하세요.
-- 고객이 한 명도 없는 직원도 모두 포함하고, 고객 수 내림차순으로 정렬하세요.

c.담당직원 = e.e_id
e.담당고객 = c.c_id

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

-- 조인 기준: N 대 N일 때,
--Group by 여러 개일 때:  first_name과 last_name을 추가했기 때문에, 
같은 employee_id 내에서 first_name과 last_name의 조합별로 세분화된 그룹이 형성됩니다.
-- ON절의 역할:
ON 컬럼명이 다르더라도, 두 열의 데이터 타입이 호환 가능하면(예: 둘 다 정수형) 가능
데이터 타입이 호환되고(예: 둘 다 INT), 
SQL은 열 이름이 아니라 값의 일치 여부를 기준으로 JOIN을 수행합니다