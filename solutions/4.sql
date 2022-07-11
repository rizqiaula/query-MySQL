use 3_odds;

SELECT employeeNumber, CONCAT (firstName, " ", lastName) employeeName
FROM customers c
	JOIN employees e
		ON e.employeeNumber = c.salesRepEmployeeNumber
GROUP BY employeeName
HAVING COUNT(employeeNumber) > 7;