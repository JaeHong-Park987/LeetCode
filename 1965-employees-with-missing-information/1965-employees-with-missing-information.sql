# Write your MySQL query statement below
SELECT a.employee_id
FROM(
  SELECT *
  FROM Employees

  UNION

  SELECT * 
  FROM Salaries) as a
GROUP BY a.employee_id
HAVING COUNT(a.employee_id) = 1
ORDER BY a.employee_id 