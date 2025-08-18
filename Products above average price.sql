--  Products above average price
SELECT product_id, product_name, price
FROM retail_products
WHERE price > (SELECT AVG(price) FROM retail_products)
ORDER BY price DESC;