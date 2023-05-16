랭킹 구현 -> rank 함수
​
1. rank함수
rank() over (order by 정렬할 기준)
값이 같은 경우 같은 순위를 가진다. 하지만 다음 값의 순위가 **밀려서** 나타난다.
ex) score rank
4        1
4        1
3        3
​
2. dense_rank함수
dense_rank() over (order by 정렬할 기준)
값이 같은 경우 같은 순위를 가진다. 하지만 다음 값의 순위가 **밀리지 않고** 나타난다.
ex) score rank
4        1
4        1
3        2
mysql 버전 8 이상이어야 사용 가능하다!!