select 
    name
from {{ref('restaurants')}}
where open_on_sundays = True