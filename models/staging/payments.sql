{{ config(materialized='view') }}

WITH src_payments AS (
    SELECT * FROM WORKSHOP.MONGODB.PAYMENTS
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
    src_payments as ps;