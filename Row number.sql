SELECT department, emp_id, name, salary,
	ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_number
FROM employees;