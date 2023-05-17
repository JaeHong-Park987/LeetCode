SELECT Request_at as Day,
ROUND(COUNT(IF(Status != 'completed', TRUE, NULL)) / COUNT(*), 2) AS 'Cancellation Rate'
FROM Trips
WHERE (Request_at BETWEEN '2013-10-01' AND '2013-10-03')
AND Client_id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'Yes')
GROUP BY Request_at;
​
CASE WHEN을 사용하여 CANCLE과 COMPLETE을 구분할 필요 없이 위에 쿼리문 처럼 COUNT에 IF문을 넣어줘서 구분할 수 있다.