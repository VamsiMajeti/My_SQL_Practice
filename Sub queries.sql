--Write a query that returns: emp_id, name, department, salary
--Only for employees whose salary is **greater than the average salary of all employees**

SELECT emp_id, name, department, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);