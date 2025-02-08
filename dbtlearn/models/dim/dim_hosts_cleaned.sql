{{

    config(
        materialized= 'view'
    )
}}
with src_hosts as (
    select * from {{ ref('src_host')}}
)

select 
host_id,
nvl(host_name,'anonymus') as host_name,
IS_SUPERHOST,
created_at,
updated_at
from src_hosts