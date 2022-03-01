SELECT
    id,
    orderid         AS order_id,
    paymentmethod   AS payment_method,
    status,
    amount,
    created

FROM raw.stripe.payment