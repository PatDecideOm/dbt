def model(dbt, session):
    df_customer = dbt.ref('stg_customer')
    df_orders = dbt.ref('stg_orders')
    
    df_result = df_customer.join(df_orders, df_customer['c_custkey'] == df_orders['o_custkey'], how='inner')
    
    return df_result