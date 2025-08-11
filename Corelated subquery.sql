--Write a query that returns: emp_id, name, department, salary
--Only for employees whose salary is **greater than the average salary of their own department**

SELECT emp_id, name, department, salary
FROM employees e
WHERE salary >
	(SELECT AVG(salary) 
	FROM employees
	WHERE e.department = department);