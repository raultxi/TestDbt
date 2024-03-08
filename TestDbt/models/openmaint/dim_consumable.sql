SELECT 
Consumable as Consumable,
_Consumable_description as Description
FROM {{ ref("movements") }}
group by Consumable,_Consumable_description