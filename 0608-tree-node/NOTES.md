문제 : 트리의 노드 유형을 추출하기
​
노드가 맨위에 있으면 -> ROOT
노드 밑에 아무것도 없으면 -> LEAF
둘 다 아니면 -> INNER
​
풀이
p_id에 null이 있으면 root
p_id가 null이 아니고 id가 p_id에 있으면 inner
그 외에는 leaf
​
* inner를 조건으로 주지 않고 leaf를 조건으로 줬을 때 not in을 사용하려고 했는데 원하는 값이 나오지 않음 -> not in 을 사용할 때는 null값을 제외해주어야 한다. 참고: https://what-am-i.tistory.com/86