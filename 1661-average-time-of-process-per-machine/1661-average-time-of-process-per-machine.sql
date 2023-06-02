# Write your MySQL query statement below
SELECT
  A1.machine_id,
  ROUND(SUM(end_time - start_time) / COUNT(*),3) AS processing_time
FROM(
  SELECT
    machine_id,
    process_id,
    timestamp AS end_time
  FROM Activity
  WHERE activity_type = 'end'
  GROUP BY machine_id, process_id
) A1
JOIN(
  SELECT
    machine_id,
    process_id,
    timestamp AS start_time
  FROM Activity
  WHERE activity_type = 'start'
  GROUP BY machine_id, process_id
) A2
ON A1.machine_id = A2.machine_id AND A1.process_id = A2.process_id
GROUP BY A1.machine_id