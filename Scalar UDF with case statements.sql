CREATE FUNCTION salaries (@entered_salary INT)
RETURNS VARCHAR (50)
AS
BEGIN
RETURN CASE WHEN @entered_salary > 100000 THEN 'High'
	WHEN @entered_salary BETWEEN 60000 and 100000 THEN 'Medium'
	WHEN @entered_salary < 60000 THEN 'Low'
END;
END;

SELECT name, salary,
       dbo.salaries(salary) AS salary_tier
FROM employees;