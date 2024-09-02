{{config(materialized='table')}}

WITH rishi as(
     select order_id,order_date,status,payment_method,amount from {{source('datafeed_shared_schema','STG_PAYMENTS')}}
     p
    join {{ref('orders')}} o 
    on o.id = p.order_id )
           

select * from rishi 