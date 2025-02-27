{% set blockchain = 'avalanche_c' %}

{{
    config(
        schema = 'balancer_v2_avalanche_c',
        alias = 'bpt_prices',        
        materialized = 'table',
        file_format = 'delta'
    )
}}


{{ 
    balancer_bpt_prices_macro(
        blockchain = blockchain
    )
}}
