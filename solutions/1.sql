use dummy_data;

SELECT employee_id,
      CONCAT(first_name, " ", last_name) employee_name,
      branch_name,
      sum(total_sales) total_sales
FROM employee
JOIN branch
  USING (branch_id)
JOIN customer_pr
  USING (employee_id)
GROUP BY employee_id
HAVING total_sales > 10000000
ORDER BY total_sales ASC;