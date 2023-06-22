# Write your MySQL query statement below
SELECT
  user_id,
  ROUND(IFNULL(confirm_count / (timeout_count + confirm_count),0),2) AS confirmation_rate
FROM(
SELECT
  S.user_id,
  IFNULL(timeout_count,0) AS timeout_count,
  IFNULL(confirm_count,0) AS confirm_count
FROM Signups AS S
LEFT JOIN(
  SELECT
  user_id,
  COUNT(user_id) AS timeout_count
FROM Confirmations
WHERE action = 'timeout'
GROUP BY user_id
) AS T
ON S.user_id = T.user_id
LEFT JOIN (
  SELECT
  user_id,
  COUNT(user_id) AS confirm_count
FROM Confirmations
WHERE action = 'confirmed'
GROUP BY user_id
) AS C
ON S.user_id = C.user_id
) AS a