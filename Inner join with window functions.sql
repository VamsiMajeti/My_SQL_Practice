SELECT e.name, d.department_name, e.salary,
	AVG(e.salary) OVER (PARTITION BY d.department_name ORDER BY e.salary DESC) AS average_department
FROM employees e
INNER JOIN departments d ON e.department_id = d. department_id;