select
*
from {{ ref('stg_restaurants__turnover') }}
order by ca desc