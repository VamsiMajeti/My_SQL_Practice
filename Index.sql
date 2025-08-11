CREATE INDEX idx_salary
ON employees_fresh (salary);

EXPLAIN SELECT name, salary
FROM employees_fresh
WHERE salary > 90000;