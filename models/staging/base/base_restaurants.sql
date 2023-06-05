select
  *
from {{ source('dbt_source', 'restaurants') }}