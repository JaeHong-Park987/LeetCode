# Write your MySQL query statement below
SELECT
  U.product_id,
  ROUND(SUM(U.units * P.price) / SUM(U.units),2) AS average_price
FROM UnitsSold AS U
JOIN Prices AS P
ON U.product_id = P.product_id AND U.purchase_date BETWEEN P.start_date AND P.end_date
# WHERE U.product_id = P.product_id
GROUP BY U.product_id