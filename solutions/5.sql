use 3_odds;

WITH employee_country AS (
SELECT * 
FROM employees
JOIN offices
  USING(officeCode)
WHERE COUNTRY != "USA")

SELECT country, 
       COUNT(officeCode) numberOfEmployee
FROM employee_country
GROUP BY country;