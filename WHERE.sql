-- Shows emp_id, name, department, and salary of employees who are in the 'Finance' department OR earn less than ₹40,000.

SELECT *
FROM employees
WHERE department = 'Finance' AND salary < 40000;