--Top 5 customers with highest number of orders
SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS order_count
FROM retail_customers c
JOIN retail_orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY order_count DESC
LIMIT 5;