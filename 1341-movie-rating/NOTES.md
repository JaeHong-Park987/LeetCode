문제
가장 많은 수의 영화를 평가한 사용자의 이름을 찾으십시오. 동점인 경우 사전순으로 더 작은 사용자 이름을 반환합니다.
​
2020년 2월 평균 평점이 가장 높은 영화 이름을 찾습니다. 동률인 경우 사전순으로 더 작은 영화 이름을 반환합니다.
​
풀이
영화 이름과 유저 이름이 같은 경우에는 한 번만 반환되어야 하기 때문에 UNION ALL을 사용해야 한다.
​
UNION을 할 때 ()로 감싸줘야 하는 이유는??
-> ORDER BY 또는 LIMIT 절을 사용할 때는 괄호로 감싸주어야 한다.
https://dev.mysql.com/doc/refman/8.0/en/set-operations.html 참고