--Total payments per payment method

SELECT payment_method, SUM(amount_paid) AS total_payments
FROM retail_payments
GROUP BY payment_method
ORDER BY total_payments DESC;