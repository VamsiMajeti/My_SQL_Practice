CREATE INDEX department_id_hire_date_salary
ON employees (department_id, hire_date, salary);

SELECT emp_id, name, hire_date, salary
FROM employees
WHERE department_id = 5 AND hire_date > 2018-01-01 AND salary > 80000;