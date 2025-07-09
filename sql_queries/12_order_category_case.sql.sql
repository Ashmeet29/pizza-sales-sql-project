-- Classify each order as Small, Medium, or Large based on the total quantity of pizzas ordered. 
use pizzahut;

SELECT order_id, SUM(quantity) AS total_quantity,
    CASE 
        WHEN SUM(quantity) <= 2 THEN 'Small'
        WHEN SUM(quantity) <= 5 THEN 'Medium'
        ELSE 'Large'
    END AS order_category
    FROM order_details
	GROUP BY order_id;