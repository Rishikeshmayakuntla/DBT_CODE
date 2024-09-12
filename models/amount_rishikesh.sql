{{ config(materialized='table') }}

with consumer as (
   select sum(AMOUNT) as total_sum 
   from {{source('datafeed_shared_schema','SPCOLUMN_MACRO')}})

select * from consumer 




