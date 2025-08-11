SELECT emp_id,  name, department, salary,
	COUNT(salary) OVER (PARTITION BY department) AS minimum_salary_of_department
FROM employees;