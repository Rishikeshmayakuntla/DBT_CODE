{{ config(materialized='view') }}

WITH combine as (
    select 
    id, 
    concat('first_name',' ','last_name') as full_name 
    from {{source('datafeed_shared_schema','STG_CUSTOMERS')}}
) 

select * from combine 