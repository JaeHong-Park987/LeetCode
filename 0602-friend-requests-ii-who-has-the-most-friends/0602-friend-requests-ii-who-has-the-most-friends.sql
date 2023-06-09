# Write your MySQL query statement below
SELECT
    id,
    SUM(num) AS num
FROM(
SELECT
    requester_id AS id,
    COUNT(accepter_id) AS num
FROM RequestAccepted
GROUP BY id

UNION ALL

SELECT
    accepter_id AS id,
    COUNT(requester_id) AS num
FROM RequestAccepted
GROUP BY id
) AS T
GROUP BY id
ORDER BY num DESC
LIMIT 1