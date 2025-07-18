-- List the top 5 most ordered pizza types
-- along with their quantities
use pizzahut;

select pizza_types.name,
sum(order_details.quantity) as quantity
from pizza_types inner join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
inner join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by quantity desc limit 5;
