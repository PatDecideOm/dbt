/*
    Chargement des données
*/
{% snapshot calcul_agghist %}

{{
    config(
      target_schema='public',
      unique_key='univers_1',

      strategy='timestamp',
      updated_at='date_maj',
    )
}}

select * from {{ ref('calcul_aggmerge') }}

{% endsnapshot %}