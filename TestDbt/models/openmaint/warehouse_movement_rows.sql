SELECT 
"_id",
"_type",
"_user",
"Quantity",
"Consumable",
"_beginDate",
"Description",
"WrhMovement",
"_WrhMovement_code",
"_Consumable_description",
"_WrhMovement_description"
FROM {{ source('movements', 'OpenMaint_Warehouse_movement_rows') }}