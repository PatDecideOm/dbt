{% snapshot users_snapshot %}  

{{
  config(      
    target_schema='datalake_public',      
    strategy='timestamp',      
    unique_key='id',      
    updated_at='updated_at'    
  )  
}}  

  select * 
  from {{ source('raw', 'users') }} as users

{% endsnapshot %}