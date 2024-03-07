SELECT 
wm."_id",
wm."Code",
wm."Date",
wm."_type",
wm."_user",
wm."Details",
wm."DstSite",
wm."SrcSite",
wm."Category",
wm."_beginDate",
wm."Description",
wm."Subcategory",
wm."_DstSite_code",
wm."_SrcSite_code",
wm."_Category_code",
wm."_Subcategory_code",
wm."_DstSite_description",
wm."_SrcSite_description",
wm."_Category_description",
wm."_Subcategory_description",
wm."_Category_description_translation",
wm."_Subcategory_description_translation",
wmr."_id" as "wmr_id",
wmr."_type" as "wmr_type",
wmr."_user" as "wmr_user",
wmr."Quantity",
wmr."Consumable",
wmr."_beginDate"  as "wmr_beginDate",
wmr."Description" as "wmr_Description",
wmr."WrhMovement",
wmr."_WrhMovement_code",
wmr."_Consumable_description",
wmr."_WrhMovement_description"
FROM {{ ref("warehouse_movements") }} AS wm
JOIN {{ ref("warehouse_movement_rows") }} AS wmr
ON wm."_id" = wmr."WrhMovement"