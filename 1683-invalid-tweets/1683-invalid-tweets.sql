# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15 # 문자열 길이 : LENGTH함수 활용!!