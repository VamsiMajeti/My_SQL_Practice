SELECT emp_id, name, department, salary, hire_date,
	LAG(hire_date) OVER(PARTITION BY department ORDER BY hire_date DESC) as previous_hire_date,
	LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) as previous_salary,
	salary - LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) as salary_difference,
	CASE
		WHEN LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) < salary THEN 'salary increased'
		WHEN LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) > salary THEN 'salary decreased'
		WHEN LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) = salary THEN 'no change'
		ELSE 'first employee'
		END status
FROM employees;