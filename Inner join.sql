SELECT e.emp_id, e.name, e.department_id, e.salary, e.hire_date, 
	d.department_id, d.location, d.budget, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;