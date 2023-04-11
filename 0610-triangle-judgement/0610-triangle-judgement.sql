# Write your MySQL query statement below
# 삼각형 조건 : 가장 긴 변의 길이가 다른 두 변의 길이의 합보다 작아야 한다.
SELECT
    x,
    y,
    z,
    CASE WHEN X < Y+Z AND Y < X+Z AND Z < X+Y THEN 'Yes'
         ELSE 'No'
    END AS TRIANGLE
FROM TRIANGLE