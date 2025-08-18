--Categorize customers into tiers (High, Medium, Low)
SELECT *, 
	CASE
	WHEN NTILE(3) OVER (ORDER BY p.amount_paid) = 1 THEN 'Low'
	WHEN NTILE(3) OVER (ORDER BY p.amount_paid) = 2 THEN 'Medium'
	ELSE 'High'
	END catageory
FROM retail_customers c
JOIN retail_orders o ON c.customer_id = o.customer_id
JOIN retail_payments p ON p.order_id = o.order_id;