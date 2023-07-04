# Write your MySQL query statement below
SELECT ROUND(COUNT(D2.customer_id) * 100 / COUNT(DISTINCT(D1.customer_id)),2) AS immediate_percentage
FROM Delivery AS D1
LEFT JOIN(
SELECT
  customer_id,
  MIN(order_date) AS first_order_date
FROM Delivery
GROUP BY customer_id
) AS D2
ON D1.customer_id = D2.customer_id AND first_order_date = customer_pref_delivery_date 