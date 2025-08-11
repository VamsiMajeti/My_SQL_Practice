WITH all_quartile AS 
	(SELECT emp_id, name, department, salary,
		NTILE(3) OVER (PARTITION BY department ORDER BY salary DESC) AS quartile,
		CASE
			WHEN NTILE(3) OVER (PARTITION BY department ORDER BY salary DESC) = 1 THEN 'High Salary'
			WHEN NTILE(3) OVER (PARTITION BY department ORDER BY salary DESC) = 2 THEN 'Mid'
			WHEN NTILE(3) OVER (PARTITION BY department ORDER BY salary DESC) = 3 THEN 'Low'
			ELSE 'Error'
		END tier
FROM employees)

SELECT * FROM all_quartile
WHERE quartile = 2;