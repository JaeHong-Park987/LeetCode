# Write your MySQL query statement below
SELECT A.employee_id
FROM(
    SELECT E.employee_id
    FROM Employees AS E
    LEFT OUTER JOIN Salaries AS S
    ON E.employee_id = S.employee_id
    WHERE salary IS NULL

    UNION

    SELECT S.employee_id
    FROM Employees AS E
    RIGHT OUTER JOIN Salaries AS S
    ON E.employee_id = S.employee_id
    WHERE name IS NULL
) as A
ORDER BY A.employee_id