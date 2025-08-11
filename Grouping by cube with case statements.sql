SELECT 
  d.department_name,
  e.name,
  SUM(e.salary) AS total_salary,
  GROUPING(d.department_name) AS department_grouped,
  GROUPING(e.name) AS name_grouped,
  CASE 
    WHEN GROUPING(d.department_name) = 1 AND GROUPING(e.name) = 1 THEN 'Grand Total'
    WHEN GROUPING(d.department_name) = 0 AND GROUPING(e.name) = 1 THEN 'Dept Total'
    WHEN GROUPING(d.department_name) = 1 AND GROUPING(e.name) = 0 THEN 'Name Total'
    ELSE 'Detailed'
  END AS grouping_level
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY CUBE (d.department_name, e.name);