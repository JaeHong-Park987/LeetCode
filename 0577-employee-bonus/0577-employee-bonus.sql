# Write your MySQL query statement below
SELECT
    E.NAME,
    B.BONUS
FROM EMPLOYEE AS E
LEFT JOIN BONUS AS B
ON E.EMPID = B.EMPID
WHERE B.BONUS < 1000 OR B.BONUS IS NULL