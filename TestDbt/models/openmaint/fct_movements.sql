SELECT 
"DstSite",
"SrcSite",
"Category",
"Subcategory",
"wmr_user" as user,
"Quantity",
"Consumable",
"wmr_beginDate" as date,
extract(year from cast("wmr_beginDate" as date)) AS Year,
extract(month from cast("wmr_beginDate" as date)) AS Month,
extract(day from cast("wmr_beginDate" as date)) AS Day,
extract(hour from cast("wmr_beginDate" as timestamp)) AS Hour,
extract(minute from cast("wmr_beginDate" as timestamp)) AS Minute
FROM {{ ref('movements') }}