{{ config(materialized='table') }}

with sales_calc as (

    select      product                 as product,
                sum(quantity_ordered)   as quantity_ordered,
                sum(quantity_ordered * 
                    sales.price_each)   as amount_ordered
    from        {{ source('public', 'sales') }}
    group by product
    order by product 

)

select * from sales_calc