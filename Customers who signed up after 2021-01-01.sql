--Customers who signed up after 2021-01-01

SELECT customer_id, customer_name, signup_date
FROM retail_customers
WHERE signup_date > '2021-01-01';