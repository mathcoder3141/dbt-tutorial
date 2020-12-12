WITH orders as (
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
),

order_payments as (
    select
        order_id,
        sum(case when status = 'success' then amount end) as amount
    FROM payments
    GROUP BY 1
),

final AS (
    select o.order_id,
           o.customer_id,
           o.order_date,
           coalesce(op.amount, 0) as amount
    FROM orders o
    LEFT JOIN order_payments op using (order_id)
)

SELECT * FROM final