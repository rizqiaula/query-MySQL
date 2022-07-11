use 3_odds;

SELECT customerName,
       country,
       CASE
       WHEN country IN ("Singapore", "Japan", "Hong Kong", "Philippines") THEN 'Asia'
       WHEN country IN ("Australia") THEN 'Australia'
       WHEN country IN ("New Zealand") THEN "Oceania"
       WHEN country IN ("USA", "Canada") THEN "America"
       ELSE "Europe"
       END continent
FROM customers;