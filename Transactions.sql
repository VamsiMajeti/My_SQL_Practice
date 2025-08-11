BEGIN;

UPDATE employees
SET salary = salary + 2000 WHERE department = 'Tech';

DELETE FROM employees
WHERE emp_id = 100;

COMMIT;