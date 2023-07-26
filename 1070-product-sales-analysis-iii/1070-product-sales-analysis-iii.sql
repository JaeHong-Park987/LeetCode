# Write your MySQL query statement below
SELECT
    S2.product_id,
    S2.first_year,
    S1.quantity,
    S1.price
FROM Sales AS S1
JOIN(
    SELECT
        product_id,
        MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id) AS S2
ON S1.product_id = S2.product_id AND S1.year = S2.first_year