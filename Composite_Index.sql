SELECT g.emp_id, g.name, g.department_id, g.salary, g.hire_date,
	d.department_id, d.department_name, d.location, d.budget
FROM GitDataOne g
JOIN GitDataTwo d ON g.department_id = d.department_id;