with stg_site_origen as (
    select 
    SrcSite  as id,
    _SrcSite_code as code,
    _SrcSite_description as description
    FROM {{ ref('movements') }}
    where _SrcSite_code is not null
    group by SrcSite,_SrcSite_code,_SrcSite_description
),
stg_site_destino as (
    select 
    DstSite  as id,
    _DstSite_code as code,
    _DstSite_description as description
    from {{ ref('movements') }}
    where _DstSite_code is not null
    group by DstSite,_DstSite_code,_DstSite_description
)


select id, code, description from stg_site_origen
union
select id, code, description from stg_site_destino
group by id, code, description