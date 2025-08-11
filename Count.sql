--Returns 3 things: The total number of employees, The average salary, The highest salary.

SELECT COUNT (emp_id) AS total_employees,
	AVG(salary) AS average_salary,
	MAX (salary) AS maximum_Salary
FROM employees;