{{ config(materialized='table')
}}

with emp as (
        select id,
            order_id,
            payment_method,
            amount,
            {{ new_macro('amount') }} as rishikesh
            from {{source('datafeed_shared_schema','STG_PAYMENTS')}})

            select * from emp     