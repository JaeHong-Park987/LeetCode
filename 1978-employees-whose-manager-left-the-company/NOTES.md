문제
급여가 $30000 미만이고 관리자가 회사를 떠난 직원의 ID를 보고하는 SQL 쿼리를 작성하십시오. 관리자가 퇴사하면 직원 테이블에서 해당 정보가 삭제되지만 보고서에는 여전히 manager_id가 퇴사한 관리자로 설정되어 있습니다.
​
employee_id로 정렬된 결과 테이블을 반환합니다.
​
풀이
급여가 30000 이하이고 manager_id가 전체 employee_id에 없는 employee_id 추출.
​
단, 서브쿼리를 사용하지 않고  AND manager_id NOT IN employee_id라고 작성할  경우 전체 employee_id와 비교하는 것이 아니라 같은 행의 employee_id와 비교하는 것이므로 오답이 될 수 있으므로 주의!!