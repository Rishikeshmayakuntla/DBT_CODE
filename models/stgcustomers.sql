{{ 
          config(materialized='view',
          secure='true')
}} 


select id,user_id,order_date,status from {{source('datafeed_shared_schema','STG_ORDERS')}}
union all 
select id,user_id,order_date,status from {{source('datafeed_shared_schema','STG_ORDERS_DATA')}}   

