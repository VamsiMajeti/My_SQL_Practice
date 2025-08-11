CREATE PROCEDURE GetEmployeesByDepartmentDetails (@entered_department VARCHAR(50))
AS
BEGIN
SELECT e.employee_name, d.department_name, d.location, e.salary, e.hire_date
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = @entered_department
ORDER BY e.salary DESC;
END;

EXEC GetEmployeesByDepartmentDetails 'Tech';