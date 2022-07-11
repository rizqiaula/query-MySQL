use 3_odds;

SELECT productCode,
	   AVG(priceEach) avgPrice,
	   CASE 
       WHEN AVG(priceEach) > 100 THEN 'High price'
       ELSE 'Low price'
       END category
FROM orderdetails
GROUP BY productCode;