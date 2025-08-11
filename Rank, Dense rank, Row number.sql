WITH top_employees AS (
	SELECT name, department, salary,
	RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
	DENSE_RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank,
	ROW_NUMBER () OVER (PARTITION BY department ORDER BY salary DESC) AS row_number
	FROM employees
)

SELECT * FROM top_employees
WHERE DEPARTMENT IN ('Tech', 'Finance', 'Sales') AND rank <=3 AND salary > (SELECT AVG(salary) FROM employees);