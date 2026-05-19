-- TOPIC :: DROP :: DROP is used to permanently remove database objects.

-- It can delete:

-- tables
-- databases
-- views
-- columns
-- constraints

--  difference between drop delete truncate 

-- | Command    | Deletes                      |
-- | ---------- | ---------------------------- |
-- | `DELETE`   | Only rows/data               |
-- | `DROP`     | Entire object                |
-- | `TRUNCATE` | All rows but keeps structure |



--  drop table table_name


--  example table 

create table dummyemp1(emp_name VARCHAR(20),emp_id int,emp_sal DECIMAL(10,2));



-- drop example

drop Table dummyemp1;



