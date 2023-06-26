# Write your MySQL query statement below
SELECT
    id ,
    num
FROM(
SELECT
    id,
    SUM(num) AS num
FROM(
SELECT
    requester_id AS id,
    COUNT(accepter_id) AS num
FROM RequestAccepted
GROUP BY requester_id

UNION ALL

SELECT  
    accepter_id AS id,
    COUNT(requester_id) AS num
FROM RequestAccepted
GROUP BY accepter_id
) AS T
GROUP BY id
) AS D
where num = (SELECT max(num) FROM(
SELECT
    id,
    SUM(num) AS num
FROM(
SELECT
    requester_id AS id,
    COUNT(accepter_id) AS num
FROM RequestAccepted
GROUP BY requester_id

UNION ALL

SELECT  
    accepter_id AS id,
    COUNT(requester_id) AS num
FROM RequestAccepted
GROUP BY accepter_id
) AS T
GROUP BY id
) AS D)