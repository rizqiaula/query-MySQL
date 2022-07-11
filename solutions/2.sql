SELECT spv_id manager_id, branch_name, COUNT(employee_id) total_employee
FROM employee e
	JOIN branch b
		USING (branch_id)
GROUP BY spv_id;


