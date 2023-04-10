# Write your MySQL query statement below
SELECT NAME
FROM SALESPERSON
WHERE NAME NOT IN (SELECT
                    S.NAME
                   FROM SALESPERSON AS S
                   LEFT OUTER JOIN ORDERS AS O
                   ON S.SALES_ID = O.SALES_ID
                   LEFT OUTER JOIN COMPANY AS C
                   ON O.COM_ID = C.COM_ID
                   WHERE C.NAME = 'RED')