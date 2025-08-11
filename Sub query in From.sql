--Create a subquery in the FROM clause that:
--Calculates average salary per department (as avg_salary)
--Then SELECT department and avg_salary from that subquery

SELECT department, avg_salary
FROM 
	(SELECT department, avg(salary) AS avg_salary
	FROM employees
	GROUP BY department) 
AS department_average;