SELECT d.department_name, d.location, 
	COUNT(e.emp_id) AS total_employees,
	AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name, d.location;