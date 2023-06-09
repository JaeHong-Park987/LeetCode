# Write your MySQL query statement below
# SELECT O1.CUSTOMER_NUMBER
# FROM ORDERS AS O1
# JOIN (SELECT
#         CUSTOMER_NUMBER,
#         COUNT(*) AS COUNT
#       FROM ORDERS
#       GROUP BY CUSTOMER_NUMBER) AS O2
# ON O1.CUSTOMER_NUMBER = O2.CUSTOMER_NUMBER
# ORDER BY COUNT DESC
# LIMIT 1

SELECT
    CUSTOMER_NUMBER
FROM ORDERS
GROUP BY CUSTOMER_NUMBER
ORDER BY COUNT(*) DESC
LIMIT 1
