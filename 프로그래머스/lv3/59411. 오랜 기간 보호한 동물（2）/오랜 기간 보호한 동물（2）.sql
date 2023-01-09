-- 코드를 입력하세요
SELECT ai.animal_id
     , ai.name 
from animal_outs ao
    inner join animal_ins ai on ao.animal_id=ai.animal_id 
order by TIMESTAMPDIFF (DAY, ai.DATETIME, ao.DATETIME) DESC
limit 2;