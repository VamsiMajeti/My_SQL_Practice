WITH filters AS (
SELECT emp_id, name, department, salary,
	ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_number,
	RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
	DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank
	FROM employees)

SELECT * FROM filters
WHERE rank <=3 AND department IN ('Tech', 'Finance', 'Sales') AND salary > (SELECT AVG(salary) FROM employees);