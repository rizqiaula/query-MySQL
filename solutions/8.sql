use 3_odds;

DELIMITER $$
CREATE FUNCTION customerSegmen(cek DECIMAL(10, 2))
RETURNS VARCHAR(20)
DETERMINISTIC
	BEGIN
		CASE 
		WHEN cek > 50000 THEN 
			RETURN 'PLATINUM';
		WHEN cek >= 10000 and cek <= 50000 THEN 
			RETURN 'GOLD';
		ELSE 
			RETURN 'SILVER';
		END CASE;
END $$
DELIMITER ;

-- The function can be tested with this query:

SELECT customerName,
	   creditLimit,
	   customerSegmen(creditLimit) customerSegmen
FROM customers;