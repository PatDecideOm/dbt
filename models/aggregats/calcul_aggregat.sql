{{ config(materialized='table') }}

with aggregat as (

    select  univers_1, count(*) as nb
    from    codification
    where   univers_1 is not null
    group by univers_1

)

select * from aggregat