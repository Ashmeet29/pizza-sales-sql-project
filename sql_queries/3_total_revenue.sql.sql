-- Calculate the total revenue generated from pizza sales.
use pizzahut;

select
round(sum(order_details.quantity * pizzas.price),2) as total_sales
from order_details inner join pizzas
on pizzas.pizza_id = order_Details.pizza_id