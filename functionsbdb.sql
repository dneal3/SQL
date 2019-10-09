use businessdb;

-- Functions
-- Count the total number of employees
SELECT COUNT(emp_id) FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id) FROM employee WHERE sex = 'F' AND birth_date > '1971-01-01';

-- Find out the average of all employee salaries
SELECT AVG(salary) FROM employee;

-- Find average of all employees that are male
SELECT AVG(salary) FROM employee WHERE sex = 'M';

-- Find the sum of all salaries
SELECT SUM(salary) FROM employee;

-- Find out how many males and females there are
 SELECT COUNT(sex), sex FROM employee GROUP BY sex;

-- Find the total sales from each employee
SELECT SUM(total_sales), emp_id FROM works_with GROUP BY emp_id;