{{ config(materialized='view') }}

with src_subscriptions as 
(
    select * from WORKSHOP.MONGODB.SUBSCRIPTIONS
    
)
select 
    sb.USER_ID,
    sb.PLAN,
    sb.STATUS,
    sb.PAYMENT_TERM,
    sb.PAYMENT_METHOD,
    sb.SUBSCRIPTION_TERM
from src_subscriptions as sb