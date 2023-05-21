# Write your MySQL query statement below
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM Insurance I1
JOIN (SELECT
        tiv_2015
      FROM Insurance
      GROUP BY tiv_2015
      HAVING COUNT(tiv_2015) > 1) I2
ON I1.tiv_2015 = I2.tiv_2015
JOIN (SELECT
        lat,
        lon
      FROM Insurance
      GROUP BY lat, lon
      HAVING COUNT(*) = 1) I3
ON I1.lat = I3.lat AND I1.lon = I3.lon

# 같은 2015년 값이 있어야 하고 (lat,lon)은 고유해야한다.