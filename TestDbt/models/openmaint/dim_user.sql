select _user as username 
from (
    select _user from {{ ref("warehouse_movements") }} 
    union all 
    select _user from {{ ref("warehouse_movement_rows") }}
)
group by _user