문제
유효한 이메일이 있는 사용자를 찾습니다.
​
유효한 이메일에는 접두사 이름과 도메인이 있습니다.
​
접두사 이름은 문자(대문자 또는 소문자), 숫자, 밑줄 '_', 마침표 '.' 및/또는 대시 '-'를 포함할 수 있는 문자열입니다. 접두사 이름은 문자로 시작해야 합니다.
​
도메인은 '@leetcode.com'입니다.
순서에 상관없이 결과 테이블을 반환합니다.
​
​
풀이
정규식을 활용 (참고 : https://dev.mysql.com/doc/refman/8.0/en/regexp.html#regexp-syntax, https://steemit.com/mysql/@seobangnim/mysql-regexp)
​
^ : 문자열 처음을 의미
[문자]* : 괄호 안의 문자를 반복
leetcode.com으로 정규식을 표현했을 때 .부분에 어떤 문자열이 와도 상관없다는 의미가 되기 때문에 괄호를 포함하여 .만 가능하게끔 설정
$ : 문자열 마지막을 의미
​
​
​
​