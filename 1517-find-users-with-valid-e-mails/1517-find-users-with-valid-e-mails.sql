# Write your MySQL query statement below
SELECT
    user_id,
    name,
    mail
FROM Users
WHERE mail REGEXP ('^[a-z]+[a-zA-Z-._/0-9]*+@leetcode[.]com$')