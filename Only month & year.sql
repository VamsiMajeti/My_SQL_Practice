SELECT name, hire_date,
	EXTRACT(YEAR FROM hire_date) AS hire_year,
	EXTRACT(MONTH FROM hire_date) AS hire_month
FROM employees;