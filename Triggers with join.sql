CREATE TRIGGER trg_salary_update
ON employees
AFTER UPDATE
AS
BEGIN
	INSERT INTO salary_log (emp_id, old_salary, new_salary)
    SELECT
        d.emp_id,
        d.salary AS old_salary,
        i.salary AS new_salary
    FROM deleted d
    JOIN inserted i ON d.emp_id = i.emp_id
    WHERE d.salary <> i.salary;
END;