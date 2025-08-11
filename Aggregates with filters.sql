--Write a query that returns: Department, Total number of employees, Total salary, 
-- Average salary, Highest salary, Lowest salary
-- Where: Employees belong to departments 'Tech', 'Sales', or 'Finance', 
--Salary is between ₹50,000 and ₹1,10,000, Name starts with 'Employee_1' or 'Employee_2'
-- Only include: Departments with more than 2 such employees And average salary above ₹70,000.

SELECT department, COUNT(emp_id), SUM(salary), AVG(salary), MAX(salary), MIN(salary)
FROM employees
WHERE department IN ('Tech', 'Sales', 'Finance') 
AND salary BETWEEN 50000 AND 110000
AND (name LIKE 'Employee_1%' OR name LIKE 'Employee_2%')
GROUP BY department
HAVING COUNT(emp_id) > 2 AND AVG(salary) > 70000;