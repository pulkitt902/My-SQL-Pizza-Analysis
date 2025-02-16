#Identify the most common pizza size ordered.

-- select quantity, count(order_details_id)
-- from order_details group by quantity;

select pizzas.size, count(order_details.order_details_id) as ordercount
from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id	
group by pizzas.size	order by ordercount desc;