select
  *
from {{ source('dbt_source', 'orders') }}