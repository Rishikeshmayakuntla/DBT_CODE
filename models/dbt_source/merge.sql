{{ config(materialized="incremental",
unique_key='id',
incremental_startegy="merge"
) }}

select * from {{source('datafeed_shared_schema','STG_ORDERS')}}
