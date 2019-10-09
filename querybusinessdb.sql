-- I use a data base named businessdb, and I like to use this as a script so I select the DB here.
use businessdb;

-- Demonstations of Basic Queries
-- Find all employees
SELECT * FROM employee;

-- Find all Clients
SELECT * FROM client;

-- Find all employees and order by their salaries
SELECT * from employee ORDER BY salary DESC; -- Ascending by default

-- Find all employees ordered by sex then name
SELECT * FROM employee ORDER BY sex, first_name, last_name;

-- Find the first 5 employees in a table.
SELECT * FROM employee LIMIT 5;

-- Find the first and last names of all employees
SELECT first_name, last_name FROM employee;

-- Find first and last names, but rename the category
SELECT first_name AS forename, last_name AS surname from employee;

-- Find all the different genders 
SELECT DISTINCT sex from employee;


-- NESTED Queries
-- Find names of employees if they have sold more than 30000 to a single client
SELECT employee.first_name, employee.last_name from employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id FROM works_with 
    WHERE works_with.total_sales > 30000
);

-- Find all clients that are handled by the branch that Michael Scott manages
SELECT client.client_name FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id 
    FROM branch
    WHERE branch.mgr_id = (
        SELECT employee.emp_id FROM employee 
        WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott' 
        LIMIT 1
    )
);

-- 