--Show emp_id, name, department, and salary of employees. 
--who belong to Tech or HR departments AND earn a salary between ₹60,000 and ₹90,000.

SELECT emp_id, name, department, salary
FROM employees
WHERE department IN ('Tech','HR') AND salary BETWEEN 60000 AND 90000;