{{ config(materialized='table') }}

with cleansed_payments as 
( 
    select * from {{ ref('payments') }}
)

select 
    ps.user_id,
    ps.CITY,
    ps.RACE,
    ps.COUNTRY,
    ps.CURRENCY,
    ps.CREDIT_CARD_TYPE,
    TO_DECIMAL(REPLACE(ps.subscription_price, '$'),10,2) as subscription_price
from cleansed_payments as ps
