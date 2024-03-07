SELECT 
"Category" as id,
"_Category_code" as code,
"_Category_description" as Description,
"Subcategory" as subid,
"_Subcategory_code" as subcode,
"_Subcategory_description" as subdescription
FROM {{ ref("movements") }}
group by "Category","_Category_code","_Category_description","Subcategory","_Subcategory_code","_Subcategory_description"