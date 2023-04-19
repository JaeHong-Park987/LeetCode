# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15 # 문자열 길이 : LENGTH함수 활용!!

* LENGTH VS CHAR_LENGTH
LENGTH : 바이트 단위로 측정된 문자열의 길이를 반환 -> 부호가 포함되어 있을 때 원하는 값을 가져오지 못할 수 있다.
CHAR_LENGTH : 문자로 측정된 문자열의 길이를 반환
