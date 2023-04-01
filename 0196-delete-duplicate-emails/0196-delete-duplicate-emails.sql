# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
DELETE P1
FROM PERSON AS P1, PERSON AS P2
WHERE P1.ID > P2.ID AND P1.EMAIL = P2.EMAIL