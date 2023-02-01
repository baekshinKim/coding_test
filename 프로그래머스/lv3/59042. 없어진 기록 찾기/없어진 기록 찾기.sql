-- 코드를 입력하세요
SELECT o.ANIMAL_ID
      ,o.NAME
  from ANIMAL_OUTS as o
  left outer join ANIMAL_INS as i 
  on i.ANIMAL_ID=o.ANIMAL_ID
  where i.ANIMAL_ID is null
  order by ANIMAL_ID