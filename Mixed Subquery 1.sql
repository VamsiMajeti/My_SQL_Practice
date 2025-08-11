-- Write a query to return: emp_id, name, department, salary,
-- Company-wide average salary (as company_avg)
-- Only for employees who: Work in 'Tech', 'Sales', or 'Finance'
-- Have salary between ₹70,000 and ₹1,10,000
-- Have salary greater than the average salary of their own department

SELECT emp_id, name, department, salary,
	(SELECT AVG(salary) AS company_avg 
		FROM employees)
FROM employees
WHERE department IN ('Sales', 'Tech', 'Finance') 
	AND salary BETWEEN 70000 AND 110000
	AND salary > (SELECT AVG(salary) AS department_avg
		FROM employees e
		WHERE e.department = department);