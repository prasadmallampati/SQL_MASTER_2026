-- DDL ::  truncate :: TRUNCATE deletes all records from a table but keeps the table structure.


-- Why Introduced

-- To remove huge amounts of data faster than DELETE.


-- When to Use

-- Use TRUNCATE when:

-- all rows need deletion
-- table should remain
-- fast performance is needed


-- syntax 
-- truncate table table_name

create table dummy0(name VARCHAR(10));

--  here below data should be deleted and str keeps
TRUNCATE table dummy0; 



