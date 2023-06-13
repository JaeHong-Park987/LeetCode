# Write your MySQL query statement below
SELECT
    s1.id,
    CASE 
        WHEN s2.student IS NULL THEN s1.student
        ELSE s2.student 
    END AS student
FROM(
    SELECT
        id,
        student
    FROM Seat
    WHERE id % 2 = 1
) AS s1
LEFT OUTER JOIN(
    SELECT
        id,
        student
    FROM Seat
    WHERE id % 2 = 0
) AS s2
ON s1.id + 1 = s2.id

UNION

SELECT
    s3.id,
    s4.student
FROM(
    SELECT
        id,
        student
    FROM Seat
    WHERE id % 2 = 0
) AS s3
JOIN(
    SELECT
        id,
        student
    FROM Seat
    WHERE id % 2 = 1
) AS s4
ON s3.id - 1 = s4.id
ORDER BY id

# SELECT
#     (CASE
#         WHEN MOD(id, 2) != 0 AND counts != id THEN id + 1
#         WHEN MOD(id, 2) != 0 AND counts = id THEN id
#         ELSE id - 1
#     END) AS id,
#     student
# FROM
#     seat,
#     (SELECT
#         COUNT(*) AS counts
#     FROM
#         seat) AS seat_counts
# ORDER BY id ASC;

# SELECT
#     s1.id, COALESCE(s2.student, s1.student) AS student
# FROM
#     seat s1
#         LEFT JOIN
#     seat s2 ON ((s1.id + 1) ^ 1) - 1 = s2.id
# ORDER BY s1.id;