-- Write a query to return: emp_id, name, salary,
-- average salary of all employees (as a separate column for each row)

SELECT emp_id, name, salary, salary > (SELECT AVG(salary) FROM employees) AS average_salary)
FROM employees;