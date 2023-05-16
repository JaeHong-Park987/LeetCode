# Write your MySQL query statement below
SELECT DISTINCT(L1.num) AS ConsecutiveNums
FROM(SELECT
      num,
      LAG(num,1) over() AS pre_num,
      LEAD(num,1) over() AS next_num
     FROM Logs) L1
WHERE L1.num = L1.pre_num and L1.num = L1.next_num