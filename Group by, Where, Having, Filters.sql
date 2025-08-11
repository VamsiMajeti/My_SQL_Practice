-- Write a query that returns: Department, COUNT of employees, AVG salary
-- Where: Employee name starts with ‘Employee_2’, Salary > ₹40,000
-- Only show departments where: COUNT > 5, AVG salary > ₹70,000

SELECT department, COUNT(emp_id), AVG(salary)
FROM employees
WHERE name LIKE 'employee_2%' AND salary > 40000
GROUP BY department
HAVING COUNT(emp_id) > 5 AND AVG(salary) > 70000;