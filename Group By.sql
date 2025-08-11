-- Write a query that returns: Each department, Total number of employees in each department,
--Average salary in each department

SELECT department, COUNT(emp_id), AVG(salary)
FROM employees
GROUP BY department;