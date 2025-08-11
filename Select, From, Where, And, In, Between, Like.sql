--Show emp_id, name, department, and salary of employees who:
--Work in the Tech or HR department, Earn between ₹60,000 and ₹90,000,
--AND their name starts with ‘Employee_1’

SELECT *
FROM employees
WHERE department IN ('HR','Tech') 
AND salary BETWEEN 60000 AND 90000 
AND name LIKE 'Employee_1%';