use businessdb;

/*For reference
 - PK -> Primary Key
 - A -> Attribute
 - FK -> Foreign Key
 - CK -> Composite Key

 - Employee Table
 - emp_id PK - first_name A - last_name A - birth_date A - sex A - salary A - super_id FK - branch_id FK

 - Branch Table
 - branch_id PK - branch_name A - mgr_id FK - mgr_start_date A 

 - Client Table
 - client_id PK - client_name A - branch_id FK

 - Works_with Table
 - emp_id CK - client_id CK - total_sales A

 - Branch Supplier Table
 - branch_id CK - supplier_name CK - supply_type A
*/

-- Employee Table Setup
    -- Corporate
    INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

    INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');

    UPDATE employee SET branch_id = 1 WHERE emp_id = 100; -- couldnt set the branch id as it didnt exist yet 

    INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

    -- Scranton
    INSERT INTO employee VALUES(102, "Michael", "Scott", '1964-03-15', 'M', 75000, 100, NULL);

    INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

    UPDATE employee SET branch_id=2 WHERE emp_id = 102; -- same reason as in corporate

    INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
    INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
    INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

    -- Stamford
    INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

    INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

    UPDATE employee SET branch_id=3 WHERE emp_id=106;

    INSERT INTO employee VALUES(107, 'Andy', "Bernard", '1973-07-22', 'M', 65000, 106, 3);
    INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

    INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- Branch Supplier Table Setup
    INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
    INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
    INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
    INSERT INTO branch_supplier VALUES(2, 'J.T Forms & Labels', 'Custom Forms');
    INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
    INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
    INSERT INTO branch_supplier VALUES(3, 'Stamford Labels', 'Custom Forms');

-- Client Table Setup
    INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
    INSERT INTO client VALUES(401, 'Lackawana County', 2);
    INSERT INTO client VALUES(402, 'FedEx', 3);
    INSERT INTO client VALUES(403, 'John Daly Law LLC', 3);
    INSERT INTO client VALUES(404, 'Scranton Whitpages', 2);
    INSERT INTO client VALUES(405, 'Times Newspaper', 3);
    INSERT INTO client VALUES(406, 'FedEx', 2);

-- Works_With Table Setup
    INSERT INTO works_with VALUES(105, 400, 55000);
    INSERT INTO works_with VALUES(102, 401, 267000);
    INSERT INTO works_with VALUES(108, 402, 22500);
    INSERT INTO works_with VALUES(107, 403, 5000);
    INSERT INTO works_with VALUES(108, 403, 12000);
    INSERT INTO works_with VALUES(105, 404, 33000);
    INSERT INTO works_with VALUES(107, 405, 26000);
    INSERT INTO works_with VALUES(102, 406, 15000);
    INSERT INTO works_with VALUES(105, 406, 130000);






