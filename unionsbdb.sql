-- Find a list of employee and branch names
SELECT first_name from employee;

SELECT branch_name from branch;

/*
    UNION RULES:
    have to have same number of columns
    have to have similar data types
*/

-- UNION Example

SELECT first_name FROM employee
UNION
SELECT branch_name FROM branch
UNION
SELECT client_name FROM client;
