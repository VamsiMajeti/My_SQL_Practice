CREATE FUNCTION GetHighSalaryEmployees (@min_salary INT)
RETURNS TABLE
AS
RETURN
(
    SELECT emp_id, name, salary
    FROM employees
    WHERE salary > @min_salary
);

SELECT * FROM dbo.GetHighSalaryEmployees(80000);