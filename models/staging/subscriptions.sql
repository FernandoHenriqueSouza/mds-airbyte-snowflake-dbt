{{ config(materialized='view') }}

with src_subscriptions as 
(
    select * from WORKSHOP."COURSE-DBT-AIRBYTE".SUBSCRIPTIONS
    
)
select 
    sb.USER_ID,
    sb.PLAN,
    sb.STATUS,
    sb.PAYMENT_TERM,
    PAYMENT_METHOD,
    SUBSCRIPTION_TERM
from src_subscriptions as sb