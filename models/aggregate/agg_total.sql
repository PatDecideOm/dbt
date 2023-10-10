{{ config(materialized='table') }}

with sales_calc as (

    select      count(distinct product) as nb_product,
                sum(quantity_ordered)   as quantity_ordered,
                sum(amount_ordered)     as amount_ordered
    from        {{ ref('agg_sales') }}

)

select * from sales_calc