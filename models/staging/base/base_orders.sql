select
    distinct *
from {{source('dbt_source', 'orders')}}