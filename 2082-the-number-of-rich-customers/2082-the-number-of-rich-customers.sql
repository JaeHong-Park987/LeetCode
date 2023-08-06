SELECT COUNT(DISTINCT(customer_id)) AS rich_count
FROM STORE
WHERE amount > 500