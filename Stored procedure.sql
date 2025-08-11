CREATE PROCEDURE high_salary_employees (@entered_salary INT)
AS
BEGIN
SELECT emp_id, salary
FROM employees
WHERE salary > @entered_salary;
END;

EXEC high_salary_employees 1000;