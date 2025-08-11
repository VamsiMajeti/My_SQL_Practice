WITH average_salary AS(
	SELECT emp_id, name, department, salary,
		AVG(salary) OVER (PARTITION BY department) AS department_average
	FROM employees)

SELECT *, CASE
	WHEN salary > department_average THEN 'above average'
	WHEN salary = department_average THEN 'at average'
	WHEN salary < department_average THEN 'below average'
	END status
FROM average_salary;