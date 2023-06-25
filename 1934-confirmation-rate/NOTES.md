문제: action에서 confirmed 된 비율 구하기
​
내 풀이 : timeout인 경우와 confirmed인 경우를 나눠주고 두 테이블을 Signups에 join 해주고 이 모든 테이블을 또 from 절에 넣어 연산으로 풀이했다.
​
여러 조인과 서브쿼리를 사용했기 때문에 집계함수에 조건문을 넣는 것이 더 좋을 것 같다.
​
집계함수에 조건문을 넣어서 한 풀이
action열이 **confrimed이면 1 아니면 0**의 평균