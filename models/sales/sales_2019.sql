{{ config(materialized='table') }}

with sales_january_2019 as (

    select      "Order ID"          as order_id,
                "Order Date"        as order_date,
                product             as product,
                "Price Each"        as price_each,
                "Quantity Ordered"  as quantity_ordered,
                "Purchase Address"  as purchase_address
    from        sales_january_2019
                   
)

select * from sales_january_2019