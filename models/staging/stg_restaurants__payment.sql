{#{% set payment_methods = ["cheque", "card", "meal_ticket", "cash"] %}#}
{#{% set payment_methods = get_payment_methods() %}#}
{% set payment_methods = dbt_utils.get_column_values(table=ref("base_orders"), column="payment_method") %}




select
o.restaurant_identifier, r.name, r.address, 
{% for payment_method in payment_methods %}
sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount{%if not loop.last %},{%endif%}
{% endfor %}
from {{ ref('base_orders')}} as o
left JOIN {{ ref("base_restaurants") }} as r ON o.restaurant_identifier = r.identifier 

group by o.restaurant_identifier, r.name, r.address
