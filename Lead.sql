SELECT emp_id, name, department, salary, hire_date,
	LEAD(hire_date) OVER(PARTITION BY department ORDER BY hire_date DESC) as previous_hire_date,
	LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) as previous_salary,
	salary - LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) as salary_difference,
	CASE
		WHEN LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) < salary THEN 'salary increased'
		WHEN LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) > salary THEN 'salary decreased'
		WHEN LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) = salary THEN 'no change'
		ELSE 'first employee'
		END status
FROM employees;