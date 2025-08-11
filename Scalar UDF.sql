CREATE FUNCTION GetYearsExperience (@hire_date DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @hire_date, GETDATE())
END;

SELECT name, dbo.GetYearsExperience(hire_date) AS years_experience
FROM employees;