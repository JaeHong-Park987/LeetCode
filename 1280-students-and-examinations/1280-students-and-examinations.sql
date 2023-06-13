# Write your MySQL query statement below
SELECT
    St.student_id,
    St.student_name,
    Su.subject_name,
    COUNT(E.student_id) AS attended_exams
FROM Students AS St
JOIN Subjects AS Su
LEFT OUTER JOIN Examinations AS E
ON St.student_id = E.student_id AND Su.subject_name = E.subject_name
GROUP BY St.student_id, Su.subject_name
ORDER BY St.student_id