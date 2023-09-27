{{ config(materialized='table') }}

with sales_2019 as (

    select      "Order ID"          as order_id,
                "Order Date"        as order_date,
                product             as product,
                "Price Each"        as price_each,
                "Quantity Ordered"  as quantity_ordered,
                "Purchase Address"  as purchase_address
    from        {{ source('public', 'sales_january_2019') }} 
    union 
    select      "Order ID"          as order_id,
                "Order Date"        as order_date,
                product             as product,
                "Price Each"        as price_each,
                "Quantity Ordered"  as quantity_ordered,
                "Purchase Address"  as purchase_address
    from        {{ source('public', 'sales_february_2019') }} 

)

select * from sales_2019