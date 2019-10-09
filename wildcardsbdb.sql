-- % = any number of characters, _ = one character
-- LIKE keyword to define patterns

-- Find clients that are LLC's
SELECT * FROM client WHERE client_name LIKE '%LLC';

-- Find branch suppliers who are in the label business
SELECT * FROM branch_supplier WHERE supplier_name LIKE '%label%';

-- Find Employees born in October
SELECT * FROM employee WHERE birth_date LIKE '____-10%'
