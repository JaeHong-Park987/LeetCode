# Write your MySQL query statement below
SELECT
  t1.month,
  t1.country,
  trans_count,
  IFNULL(approved_count,0) AS approved_count,
  trans_total_amount,
  IFNULL(approved_total_amount,0) AS approved_total_amount
FROM(
SELECT 
  DATE_FORMAT(trans_date, '%Y-%m') AS month,
  country,
  COUNT(id) AS trans_count,
  SUM(amount) AS trans_total_amount
FROM Transactions
GROUP BY month, country
) AS T1
LEFT OUTER JOIN(
SELECT 
  DATE_FORMAT(trans_date, '%Y-%m') AS month,
  country,
  COUNT(id) AS approved_count,
  SUM(amount) AS approved_total_amount
FROM Transactions
WHERE state = 'approved'
GROUP BY month, country
) AS T2
ON T1.month = T2.month AND T1.country = T2.country