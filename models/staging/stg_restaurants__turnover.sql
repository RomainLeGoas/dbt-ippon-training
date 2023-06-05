select
o.restaurant_identifier, sum(o.amount) as ca, r.name, r.address 
from {{ ref('base_orders')}} as o, {{ref('base_restaurants')}} as r 
where o.restaurant_identifier = r.identifier 
group by o.restaurant_identifier, r.name, r.address