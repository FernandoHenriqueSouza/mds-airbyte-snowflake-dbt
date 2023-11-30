{{ config(materialized='table') }}
with cleansed_user as (

    select * from {{ ref('user')}}

)
select user_id as user_id,
       username as user_name,
       gender as gender,
       cu.EMPLOYMENT:title::STRING as title,
       cu.subscription:payment_method::STRING as payment_method
from workshop.MONGODB.USER as cu
