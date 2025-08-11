SELECT name, department, salary, emp_id, 
	DENSE_RANK () OVER (PARTITION BY department ORDER BY salary DESC) as rank
FROM employees;