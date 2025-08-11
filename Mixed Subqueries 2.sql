-- Return: emp_id, name, department, salary, company-wide average salary (as company_avg)
-- Only for employees who: Are in the ‘Operations’, ‘Tech’, or ‘Marketing’ departments
-- Have salary between ₹65,000 and ₹1,00,000, Earn more than the average salary of their department

SELECT emp_id, name, department, salary, 
	(SELECT AVG(salary) AS company_avg 
		FROM employees)
FROM employees
WHERE department IN ('Operations', 'Tech', 'Marketing') 
	AND salary BETWEEN 65000 AND 100000
	AND salary > (SELECT AVG(salary) AS department_avg FROM employees);