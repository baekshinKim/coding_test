-- 코드를 입력하세요
SELECT FOOD_TYPE,REST_ID,REST_NAME, FAVORITES
from REST_INFO
where FAVORITES in (select max(favorites) from rest_info 
                   group by food_type)
group by FOOD_TYPE order by FOOD_TYPE desc