{{config(materialized='table')}}

with rishi as (
    select ID,
    FIRST_NAME,
    LAST_NAME
    from {{source('datafeed_shared_schema','STG_CUSTOMERS')}})

    select * from rishi 