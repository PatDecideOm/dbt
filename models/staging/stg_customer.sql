{{ config(materialized='table') }}

with stg_customer as (

    select      *
    from        {{ source('tcph_sf1', 'customer') }} as customer

)

select * from stg_customer