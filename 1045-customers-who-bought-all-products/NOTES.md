문제 : product 테이블에 있는 제품을 모두 산 고객 추출
​
PRODUCT 테이블에 없는 제품을 고객이 살 수 있는 경우도 생각해서 쿼리를 짜야했나??
-> product_key가 Product 테이블의 외래키이기 때문에 Customer 테이블에 있는 product_key는 모두 Product 테이블에 존재한다.
​
만약, 외래키가 아니었다면 쿼리를 바꿔야 한다!!!
-> GROUP BY 이전에 WHERE절을 추가하여 Product테이블에 존재하는 product_key만 가져오기.