# Write your MySQL query statement below
SELECT name
FROM Employee
WHERE id in (SELECT
                managerId
             FROM Employee
             GROUP BY managerId
             HAVING COUNT(managerId) >= 5) # managerId의 값이 null인 경우가 5개 이상일 수도 있기 때문에 * 대신 컬럼명을 명시해주었다.