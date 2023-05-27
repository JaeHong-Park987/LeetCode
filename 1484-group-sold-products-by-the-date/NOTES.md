GROUP_CONCAT : group by로 문자열을 합칠 때 사용
​
GROUP_CONCAT안에 DISTINCT를 사용하면 기본적으로 오름차순으로 정렬된다.
​
만약, 내림차순으로 정렬하고 싶다면 ORDER BY 필드명 DESC를 사용하면 된다.
​
구분자를 ',' 대신 다른 것을 사용하고 싶다면 separator를 활용하여 원하는 구분자를 지정하면 된다.