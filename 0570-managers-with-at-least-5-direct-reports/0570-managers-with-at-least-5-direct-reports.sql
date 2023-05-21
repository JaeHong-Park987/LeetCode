# Write your MySQL query statement below
SELECT name
FROM Employee E1
JOIN (SELECT
        managerId
      FROM Employee
      GROUP BY managerId
      HAVING COUNT(managerId) >= 5) E2
ON E1.id = E2.managerId