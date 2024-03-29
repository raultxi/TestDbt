SELECT 
wm."_id" as _id,
wm."Code" as Code,
wm."Date" as Date,
wm."_type" as _type,
wm."_user" as _user,
wm."Details" as Details,
wm."DstSite" as DstSite,
wm."SrcSite" as SrcSite,
wm."Category" as Category,
wm."_beginDate" as _beginDate,
wm."Description" as Description,
wm."Subcategory" as Subcategory,
wm."_DstSite_code" as _DstSite_code,
wm."_SrcSite_code" as _SrcSite_code,
wm."_Category_code" as _Category_code,
wm."_Subcategory_code" as _Subcategory_code,
wm."_DstSite_description" as _DstSite_description,
wm."_SrcSite_description" as _SrcSite_description,
wm."_Category_description" as _Category_description,
wm."_Subcategory_description" as _Subcategory_description,
wm."_Category_description_translation" as _Category_description_translation,
wm."_Subcategory_description_translation" as _Subcategory_description_translation,
wmr."_id" as wmr_id,
wmr."_type" as wmr_type,
wmr."_user" as wmr_user,
wmr."Quantity" as Quantity,
wmr."Consumable" as Consumable,
wmr."_beginDate"  as wmr_beginDate,
wmr."Description" as wmr_Description,
wmr."WrhMovement" as WrhMovement,
wmr."_WrhMovement_code" as _WrhMovement_code,
wmr."_Consumable_description" as _Consumable_description,
wmr."_WrhMovement_description" as _WrhMovement_description
FROM {{ ref("warehouse_movements") }} AS wm
JOIN {{ ref("warehouse_movement_rows") }} AS wmr
ON wm."_id" = wmr."WrhMovement"