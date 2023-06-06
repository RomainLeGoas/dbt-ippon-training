select
  *
from {{ mockable_source('dbt_source', 'restaurants', 'sample_restaurants') }}