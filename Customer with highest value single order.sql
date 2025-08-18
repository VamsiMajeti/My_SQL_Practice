--Customer with highest value single order.

SELECT c.customer_name, MAX(p.amount_paid) AS highest_order_value
FROM retail_customers c
JOIN retail_orders o ON c.customer_id = o.customer_id
JOIN retail_payments p ON p.order_id = o.order_id
GROUP BY o.order_id, c.customer_name
ORDER BY highest_order_value DESC
LIMIT 1;