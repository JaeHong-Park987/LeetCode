# Write your MySQL query statement below
UPDATE SALARY
SET SEX = 
CASE
    WHEN SEX ='m' then 'f'
    ELSE 'm'
END 