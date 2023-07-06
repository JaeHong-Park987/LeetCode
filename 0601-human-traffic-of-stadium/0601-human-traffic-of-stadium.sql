# Write your MySQL query statement below
SELECT
  id,
  visit_date,
  people
FROM Stadium
WHERE id IN (SELECT s1.id 
             FROM Stadium s1, Stadium s2, Stadium s3
             WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people >= 100 AND s1.id + 1 = s2.id AND s1.id + 2 = s3.id)
OR id IN(SELECT s2.id 
             FROM Stadium s1, Stadium s2, Stadium s3
             WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people >= 100 AND s1.id + 1 = s2.id AND s1.id + 2 = s3.id)
OR id IN (SELECT s3.id 
             FROM Stadium s1, Stadium s2, Stadium s3
             WHERE s1.people >= 100 AND s2.people >= 100 AND s3.people >= 100 AND s1.id + 1 = s2.id AND s1.id + 2 = s3.id)
ORDER BY visit_date