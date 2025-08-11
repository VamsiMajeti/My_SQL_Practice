CREATE FUNCTION two_parameters 
(@location VARCHAR(50), @min_years_of_experience INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        e.employee_name, 
        d.department_name, 
        d.location, 
        e.salary, 
        DATE_PART('YEAR', AGE(CURRENT_DATE, hire_date)) AS years_of_experience, 
        CASE
            WHEN e.salary > 90000 THEN 'High'
            WHEN e.salary BETWEEN 60000 AND 90000 THEN 'Medium'
            WHEN e.salary < 60000 THEN 'Low'
        END AS performance_tier
    FROM employees e
    JOIN departments d 
        ON e.department_id = d.department_id
    WHERE d.location = @location 
      AND DATE_PART('YEAR', AGE(CURRENT_DATE, hire_date)) >= @min_years_of_experience
);

SELECT * 
FROM dbo.two_parameters('Hyderabad', 5)
ORDER BY salary DESC;