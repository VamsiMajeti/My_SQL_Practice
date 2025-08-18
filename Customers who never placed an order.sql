--Customers who never placed an order
SELECT c.customer_id, c.customer_name
FROM retail_customers c
LEFT JOIN retail_orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;