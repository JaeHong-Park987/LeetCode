# Write your MySQL query statement below
SELECT
  request_at AS Day,
  ROUND(SUM(CAL_COUNT) / COUNT(CAL_COUNT),2) AS 'Cancellation Rate'
FROM(SELECT
      request_at,
     CASE WHEN
      status = 'completed' THEN 0
      ELSE 1 END AS CAL_COUNT
    FROM Trips
    WHERE client_id NOT IN (SELECT users_id
                            FROM Users
                            WHERE banned = 'Yes')
    AND driver_id NOT IN (SELECT users_id
                          FROM Users
                          WHERE banned = 'Yes')) AS T
WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at 