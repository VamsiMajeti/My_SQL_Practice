WITH average_salary AS(
	SELECT emp_id, name, department, salary,
	AVG(salary) OVER(PARTITION BY department) AS average_of_each_department
	FROM employees)

SELECT *, NTILE(4) OVER (PARTITION BY department ORDER BY salary DESC) AS quartile,
	SUM(salary) OVER (PARTITION BY department) AS total_salary,
	MIN(salary) OVER (PARTITION BY department) AS minimum_salary,
	MAX(salary) OVER (PARTITION BY department) AS minimum_salary,
	CASE
  		WHEN salary > average_of_each_department THEN 'Above average'
 		 WHEN salary = average_of_each_department THEN 'At average'
  		WHEN salary < average_of_each_department THEN 'Below average'
	END AS status
FROM average_salary;