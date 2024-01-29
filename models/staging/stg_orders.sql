{{ config(materialized='table') }}

with stg_orders as (

    select      *
    from        {{ source('tcph_sf1', 'orders') }} as customer

)

select * from stg_orders