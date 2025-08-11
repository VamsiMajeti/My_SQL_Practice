-- Write a query that returns: Department, Average salary,
--Only include departments with **average salary over ₹75,000

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 75000;