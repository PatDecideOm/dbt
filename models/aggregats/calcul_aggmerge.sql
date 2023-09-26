/*
    Chargement des données
*/

{{ 
    config(
        materialized='incremental',
        unique_key = 'univers_1',
        incremental_strategy='merge'
        ) 
}}

select 
    univers_1,
    date_maj,
    nb
from {{ source('public', 'calcul_aggregat') }}