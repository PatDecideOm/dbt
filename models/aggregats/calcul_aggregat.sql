{{ config(materialized='table') }}

with aggregat as (

    select  univers_1, now() as date_maj, count(*) as nb
    from    {{ source('public', 'codification') }}
    where   univers_1 is not null
    group by univers_1

)

select * from aggregat