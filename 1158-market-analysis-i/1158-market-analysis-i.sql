# Write your MySQL query statement below
# SELECT
#     user_id AS buyer_id,
#     join_date,
#     IFNULL(orders_in_2019,0) AS orders_in_2019
# FROM Users AS U
# LEFT JOIN(
# SELECT
#     buyer_id,
#     count(*) AS orders_in_2019
# FROM Orders
# WHERE order_date BETWEEN '2019-01-01' AND '2019-12-31'
# GROUP BY buyer_id
# ) AS O
# ON U.user_id = O.buyer_id

# ifnull이 필요 없는 방법
SELECT u.user_id as buyer_id, u.join_date, count(o.order_id) as 'orders_in_2019'
FROM users u
LEFT JOIN Orders o
ON o.buyer_id=u.user_id AND YEAR(order_date)='2019'
GROUP BY u.user_id