WITH sales_calc AS (
  SELECT
    product AS product,
    SUM(quantity_ordered) AS quantity_ordered,
    SUM(quantity_ordered * sales.price_each) AS amount_ordered
  FROM {{ source('public', 'sales') }} AS sales
  GROUP BY
    product
  ORDER BY
    product NULLS FIRST
)
SELECT
  *
FROM sales_calc