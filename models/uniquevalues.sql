{{config (materialized='view'
) }}

   select id,user_id,status,RANK() over( ORDER BY USER_ID ) 
        as rishi from {{source('datafeed_shared_schema','STG_CUSTOMERS')}}