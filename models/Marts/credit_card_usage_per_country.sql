with cleansed_user as 
(
    select * from {{ ref('cleansed_user') }}
),

cleansed_payments as (
    select * from {{ ref('cleansed_payments') }}
),

credit_card_usege_per_country as (
    select ps.COUNTRY, ps.CURRENCY, ps.CREDIT_CARD_TYPE, count(*) as amount
    from cleansed_user as pu
    inner join cleansed_payments as ps using(user_id)
    group by ps.COUNTRY, ps.CURRENCY, ps.CREDIT_CARD_TYPE
)

select *
from credit_card_usege_per_country