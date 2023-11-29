{{ config(materialized='view') }}

with src_payments as 
(
    select * from WORKSHOP.MONGODB.PAYMENTS
    
)
SELECT
    ps.user_id,
    ps.city,
    ps.race,
    ps.country,
    ps.currency,
    ps.credit_card_type,
    ps.subscription_price
FROM
    src_payments as ps