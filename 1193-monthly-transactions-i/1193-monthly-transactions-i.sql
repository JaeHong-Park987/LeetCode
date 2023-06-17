# Write your MySQL query statement below
SELECT 
  DATE_FORMAT(trans_date, '%Y-%m') AS month,
  country,
  COUNT(id) AS trans_count,
  COUNT(CASE WHEN state = 'approved' then 1 else NULL end) AS approved_count,
  SUM(amount) AS trans_total_amount,
  SUM(CASE WHEN state = 'approved' then amount else 0 end) AS approved_total_amount
FROM Transactions
GROUP BY month, country