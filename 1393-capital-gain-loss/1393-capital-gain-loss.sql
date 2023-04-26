# Write your MySQL query statement below
# SELECT
#     S.stock_name,
#     SUM(S.price) AS capital_gain_loss
# FROM(SELECT
#         stock_name,
#         CASE
#             WHEN operation = 'Buy' THEN price * -1
#             ELSE price
#         END AS price
#     FROM Stocks) AS S
# GROUP BY S.stock_name;

# FROM에 서브쿼리를 쓰는 대신 SELECT문 SUM에 바로 CASE WHEN 구문을 넣어도 된다.
SELECT
    stock_name,
    SUM(CASE
            WHEN operation = 'Buy' THEN price * -1
            ELSE price
        END) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;
