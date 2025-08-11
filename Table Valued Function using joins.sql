CREATE FUNCTION dbo.GetHighSalaryEmployees
(
    @entered_department VARCHAR(50),
    @min_salary INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT e.name, d.department_name, e.salary, e.hire_date
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id
    WHERE d.department_name = @entered_department
      AND e.salary > @min_salary
);

SELECT *
FROM dbo.GetHighSalaryEmployees('Tech', 80000);