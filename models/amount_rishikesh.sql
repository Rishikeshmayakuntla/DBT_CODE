{{ config(materialized='table') }}

with consumer as (
    select id,
            order_id,
            payment_method,
            amount,
            RISHIKESH,
            ({{calculate_amount('amount','RISHIKESH')}}) as new_amount
            from 
            {{source('datafeed_shared_schema','SPCOLUMN_MACRO')}}
            )

select * from consumer  




