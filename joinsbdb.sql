USE businessdb;

-- How to use JOIN in SQL

-- Find all branches and the names of their managers
SELECT employee.emp_id, employee.first_name, branch.branch_name FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id; 

-- Left join includes all rows from the left table which is the one included in the FROM statement in this case the employee table
SELECT employee.emp_id, employee.first_name, branch.branch_name FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id; 

-- Right Join this inlcudes all the rows from the right table in this case the branch table
SELECT employee.emp_id, employee.first_name, branch.branch_name FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id; 

-- FULL OUTER JOIN basically a right and a left join combined doesnt work in MySQL so there is no example
