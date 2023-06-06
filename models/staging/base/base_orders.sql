select
    distinct *
from {{ mockable_source('dbt_source', 'orders', 'sample_orders') }}