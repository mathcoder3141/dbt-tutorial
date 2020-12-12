SELECT 
    id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- stripe stores payment in cents
    amount / 100.0 as amount,
    created as ordered_at
FROM {{ source('stripe', 'payment') }}
