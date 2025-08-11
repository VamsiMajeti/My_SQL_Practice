SELECT e.name, d.department_name, d.location, e.salary,
	CASE 
		WHEN e.salary >= 100000 THEN 'High'
		WHEN e.salary BETWEEN 80000 AND 99999 THEN 'Medium'
		WHEN e.salary <= 80000 THEN 'Low'
	END salary_tier
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
ORDER BY e.salary DESC;