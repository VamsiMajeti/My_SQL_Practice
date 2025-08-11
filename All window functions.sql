WITH CTE AS (
	SELECT emp_id, name, department, salary, 
	ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_number,
	RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank,
	DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_rank,
	NTILE(4) OVER (PARTITION BY department ORDER BY salary DESC) AS quartile,
	AVG(salary) OVER (PARTITION BY department) AS department_level_average,
	LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS next_lower_salary,
		LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS next_higher_salary
	FROM employees)

SELECT *,
CASE
	WHEN salary > department_level_average THEN 'Above average'
	WHEN salary < department_level_average THEN 'Below average'
	WHEN salary = department_level_average THEN 'Average'
ELSE 'Error'
	END AS status
FROM CTE
WHERE quartile = 1 AND dense_rank = 1 AND salary > department_level_average;