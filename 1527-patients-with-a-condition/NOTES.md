문제
제1형 당뇨병이 있는 환자의 patient_id, patient_name 및 상태를 찾으십시오. I형 당뇨병은 항상 DIAB1 접두사로 시작합니다.
​
순서에 상관없이 결과 테이블을 반환합니다.
​
풀이
DIAB1을 포함한 단어가 맨 앞에 온 경우는 DIAB1%로 찾아주었고
DIAB1을 포함한 단어가 맨 앞이 안니 경우는 % DIAB1%로 찾아 주었다. -> 이때, 띄어쓰기를 해주지 않으면 접미사가 아닌 경우도 출력되므로 띄어쓰기를 해주어야 한다.