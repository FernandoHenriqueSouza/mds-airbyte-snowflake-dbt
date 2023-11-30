{{ config(materialized='view') }}

with src_payments as 
(
    select * from workshop.MONGODB.PAYMENTS
    
)
select 
    ps.USER_ID,
    ps.CITY,
    ps.RACE,
    ps.COUNTRY,
    ps.CURRENCY,
    ps.CREDIT_CARD_TYPE,
    ps.SUBSCRIPTION_PRICE
from src_payments as ps
