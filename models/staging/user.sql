with src_user as 
(
    select * from workshop."COURSE-DBT-AIRBYTE".user
    
)
select 
    pu.id,
    pu.user_id,
    pu.gender,
    pu.employment,
    pu.credit_card,
    pu.subscription
from src_user as pu

