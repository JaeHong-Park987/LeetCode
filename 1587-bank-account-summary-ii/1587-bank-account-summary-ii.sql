# Write your MySQL query statement below
SELECT
    name,
    SUM(amount) AS balance
FROM Transactions AS T
LEFT JOIN Users AS U
ON T.account = U.account
GROUP BY T.account
HAVING balance > 10000