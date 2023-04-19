# Write your MySQL query statement below
SELECT EN.unique_id, E.name
FROM Employees as E
LEFT OUTER JOIN EmployeeUNI as EN
ON E.id = EN.id