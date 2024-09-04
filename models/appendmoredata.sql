{{config(materialized="incremental",
  incremental_startegy="append",)}}

  select * from {{source('datafeed_shared_schema','STG_ORDERS')}}  