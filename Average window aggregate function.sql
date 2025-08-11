SELECT name, department, salary,
       AVG(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS dept_avg_salary
FROM employees;