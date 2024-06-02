with source as (select * from {{ source('jaffle_shop', 'orders') }}),

status_mapping as (select * from {{ ref('seed_order_statuses') }}),

transformed as (
   select
       t0.id,
       t0.user_id,
       t0.order_date,
       t0.status,
       t0._etl_loaded_at,
       t1.is_valid
   from source as t0
   left join status_mapping as t1
       on t0.status = t1.status
)

select * from transformed
