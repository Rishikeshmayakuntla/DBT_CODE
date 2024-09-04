{{config(materialized='view')}}

WITH rishi as (
    select
    user_id, 
    order_date,
      payment_method
      from {{source('datafeed_shared_schema','STG_PAYMENTS')}} p
      right join {{ref('orders')}} o
      on o.id = p.order_id)


select * from rishi 