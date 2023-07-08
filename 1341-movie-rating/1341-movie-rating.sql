# Write your MySQL query statement below
(SELECT
    name AS results
FROM Users AS U
JOIN MovieRating AS MR
ON U.user_id = MR.user_id
GROUP BY U.user_id
ORDER BY COUNT(*) DESC, name
LIMIT 1)

UNION ALL

(SELECT
    title AS result
FROM Movies AS M
JOIN MovieRating AS MR
ON M.movie_id = MR.movie_id AND created_at LIKE '2020-02%'
GROUP BY M.movie_id
ORDER BY AVG(rating) DESC, title
LIMIT 1)