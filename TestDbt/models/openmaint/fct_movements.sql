SELECT 
DstSite as DstSite,
SrcSite as SrcSite,
Category as Category,
Subcategory as Subcategory,
wmr_user as user,
Quantity as Quantity,
Consumable as Consumable,
wmr_beginDate as date,
extract(year from cast(wmr_beginDate as date)) AS Year,
extract(month from cast(wmr_beginDate as date)) AS Month,
extract(day from cast(wmr_beginDate as date)) AS Day,
extract(hour from cast(wmr_beginDate as timestamp)) AS Hour,
extract(minute from cast(wmr_beginDate as timestamp)) AS Minute
FROM {{ ref('movements') }}