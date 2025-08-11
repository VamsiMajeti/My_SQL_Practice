WITH filters AS (
SELECT emp_id, name, department, salary,
	ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_number,
	RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
	DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank,
	CASE
		WHEN salary > AVG(salary) OVER (PARTITION BY department) THEN 'Positive'
		WHEN salary < AVG(salary) OVER (PARTITION BY department) THEN 'Negative'
		ELSE 'Neutral'
	END status
	FROM employees)

SELECT * FROM filters
WHERE rank <=2 AND department IN ('Tech', 'Finance', 'Sales') AND salary > (SELECT AVG(salary) FROM employees);