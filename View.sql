CREATE VIEW finance_employees AS 
	(SELECT emp_id, name, salary, hire_date
	FROM employees
	WHERE department = 'Finance')

SELECT * FROM finance_employees;