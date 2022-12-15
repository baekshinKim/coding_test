-- 코드를 입력하세요
SELECT p.PRODUCT_CODE
      , sum(p.PRICE*s.SALES_AMOUNT) as SALES
  from PRODUCT as p 
  inner join OFFLINE_SALE as s
  on p.PRODUCT_ID=s.PRODUCT_ID
  group by p.PRODUCT_CODE
  order by SALES desc, PRODUCT_CODE