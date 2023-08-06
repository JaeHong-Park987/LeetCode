SELECT
    COUNT(customer_id) AS rich_count
FROM(
SELECT
    customer_id,
    COUNT(*)
FROM Store
WHERE amount > 500
GROUP BY customer_id) AS T