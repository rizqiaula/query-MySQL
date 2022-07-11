use dummy_data;

SELECT branch_name,
       CONCAT(first_name, " ", last_name) employee_name,
       MAX(total_sales) max_sales
FROM employee
  JOIN customer_pr
USING(employee_id)
  JOIN branch
USING(branch_id)
GROUP BY branch_name;