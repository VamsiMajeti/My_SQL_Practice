SELECT d.department_name, d.location, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY GROUPING SETS ((d.department_name), (d.location), (d.department_name, d.location));