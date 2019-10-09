USE businessdb;

CREATE TABLE triggertest (
    message VARCHAR(100)
);

-- This wont run as a script, you actually need to put this into the mysql> command line as you need to change the delimiter
-- DELIMITER $$; 

CREATE 
    TRIGGER my_trigger BEFORE INSERT 
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO triggertest VALUES(NEW.first_name);
    END $$
    
-- DELIMITER ;

SELECT * FROM triggertest; -- This will log the message. 