# Write your MySQL query statement below
SELECT
    p1.product_id,
    CASE
        WHEN new_price IS NULL THEN 10
        ELSE new_price
    END price
FROM(
    SELECT DISTINCT(product_id) 
    FROM products
    ) p1
LEFT JOIN(
    Select
        product_id,
        new_price
    FROM products
    where (product_id, change_date) 
    IN (
        SELECT
            product_id, 
            MAX(change_date)
        FROM products
        WHERE change_date <= '2019-08-16'
        GROUP BY product_id
        )
    ) p2
ON p1.product_id = p2.product_id