--Rank customers by total spending
SELECT *, DENSE_RANK() OVER (ORDER BY p.amount_paid DESC) as rank
FROM retail_customers c
JOIN retail_orders o ON c.customer_id = o.customer_id
JOIN retail_payments p ON p.order_id = o.order_id;