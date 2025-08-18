--City with the highest revenue contribution
SELECT o.shipping_city, SUM(p.amount_paid)
FROM retail_customers c
JOIN retail_orders o ON c.customer_id = o.customer_id
JOIN retail_payments p ON p.order_id = o.order_id
GROUP BY o.shipping_city;