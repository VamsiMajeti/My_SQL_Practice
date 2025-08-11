CREATE VIEW finance_employees AS 
	(SELECT emp_id, name, salary, hire_date,
	DATEPART(YEAR, (CURRENTDATE, hire_date) AS years_of_experience
	FROM employees
	WHERE department = 'Finance');

SELECT *,
	CASE
		WHEN years_of_experience >= 8 THEN 'Veteran'
		WHEN years_of_experience BETWEEN 5 AND 8 THEN 'Experienced'
		WHEN years_of_experience < 5 THEN 'Newbie'
	END experience
FROM finance_employees;