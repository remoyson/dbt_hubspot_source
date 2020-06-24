with base as (

    select *
    from {{ source('hubspot','engagement_deal')}}

), fields as (

    select
        _fivetran_synced,
        deal_id,
        engagement_id
    from base
    
)

select *
from fields