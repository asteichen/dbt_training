with fct_orders as (

    select
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    p.amount
     
    from {{ ref('stg_orders') }} o
    join  {{ ref('stg_payments')}} p 
    on o.order_id = p.order_id
)

select * from fct_orders