SELECT name, hire_date,
	DATE_PART('year', AGE(CURRENT_DATE, hire_date)) AS years_experience,
	CASE
		WHEN DATE_PART('year', AGE(CURRENT_DATE, hire_date)) > 8 THEN 'veteran'
		WHEN DATE_PART('year', AGE(CURRENT_DATE, hire_date)) BETWEEN 5 AND 8 THEN 'experienced'
		WHEN DATE_PART('year', AGE(CURRENT_DATE, hire_date)) < 5 THEN 'Newbie'
	END experience
FROM employees
WHERE DATE_PART('year', AGE(CURRENT_DATE, hire_date)) >= 5
ORDER BY years_experience DESC;