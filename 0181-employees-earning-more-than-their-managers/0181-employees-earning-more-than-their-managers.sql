# Write your MySQL query statement below
SELECT
    E.NAME AS Employee
FROM EMPLOYEE AS E
JOIN (SELECT
        ID AS M_ID,
        NAME AS M_NAME,
        SALARY AS M_SALARY
      FROM EMPLOYEE) AS M
ON E.MANAGERID = M.M_ID
WHERE E.SALARY > M.M_SALARY