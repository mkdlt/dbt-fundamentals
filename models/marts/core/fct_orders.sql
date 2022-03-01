WITH orders AS (
    
    SELECT * FROM {{ ref('stg_orders') }}

),

payments AS (

    SELECT * FROM {{ ref('stg_payments') }}

)

SELECT o.customer_id,
       o.order_id,
       p.amount
  FROM orders AS o
  LEFT
  JOIN payments AS p
    ON o.order_id = p.order_id