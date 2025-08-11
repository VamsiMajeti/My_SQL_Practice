-- Update salary to trigger it
UPDATE employees
SET salary = salary + 1000
WHERE emp_id = 1;

-- See log
SELECT * FROM salary_log;