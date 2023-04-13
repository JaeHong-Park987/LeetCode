# Write your MySQL query statement below
SELECT
    ID,
    MOVIE,
    DESCRIPTION,
    RATING
FROM CINEMA
WHERE DESCRIPTION != 'boring' and MOD(ID,2) = 1 
ORDER BY RATING DESC
# 홀수 짝수 구할 때 -> MOD 활용!!