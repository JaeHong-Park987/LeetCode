# Write your MySQL query statement below
SELECT
    S.stock_name,
    SUM(S.price) AS capital_gain_loss
FROM(SELECT
        stock_name,
        CASE
            WHEN operation = 'Buy' THEN price * -1
            ELSE price
        END AS price
    FROM Stocks) AS S
GROUP BY S.stock_name