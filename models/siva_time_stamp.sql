{{ config(materialized='table')
}}

with siva as (
    order_id,
            payment_method,
            amount,
                {{Timelogic()}} as rishi 
            from {{source('datafeed_shared_schema','STG_PAYMENTS')}})

            select * from siva  



