select
restaurant_identifier, sum(amount) as ca
from {{ source('dbt_source', 'orders') }}
group by restaurant_identifier