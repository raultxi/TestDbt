select distinct _user as user from (select _user from {{ ref("warehouse_movements") }} union all select _user from {{ ref("warehouse_movement_rows") }})
