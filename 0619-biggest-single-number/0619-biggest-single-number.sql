# Write your MySQL query statement below
SELECT
    MAX(M.NUM) AS num
FROM (SELECT
        num
      FROM MYNUMBERS
      GROUP BY NUM
      HAVING COUNT(*) = 1) AS M