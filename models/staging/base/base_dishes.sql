select
  *
from {{ mockable_source('dbt_source', 'dishes', 'sample_dishes') }}