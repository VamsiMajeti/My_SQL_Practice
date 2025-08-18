--Average order value per customer

SELECT c.customer_id, c.customer_name, AVG(p.amount_paid) AS avg_order_value
FROM retail_customers c
JOIN retail_orders o ON c.customer_id = o.customer_id
JOIN retail_payments p ON p.order_id = o.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY avg_order_value DESC;