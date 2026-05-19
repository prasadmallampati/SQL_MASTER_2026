-- TOPIC :: ALTER : ALTER changes the structure of an existing table.

-- why alter introduced:: (Instead of creating a new table, SQL provides ALTER.)
-- sometimes after creating table we need add new column
-- remove column
-- change datatype
-- rename column

-- where to use::
-- tables
-- columns
-- constraints 

-- when to use::
-- table already exists 
-- only structure need to change 

--  we can below operation using alter 


-- | Operation         | Purpose              |
-- | ----------------- | -------------------- |
-- | `ADD`             | Add new column       |
-- | `ALTER COLUMN`    | Change datatype/size |
-- | `DROP COLUMN`     | Remove column        |
-- | `ADD CONSTRAINT`  | Add constraints      |
-- | `DROP CONSTRAINT` | Remove constraints   |
-- | `RENAME`          | Rename column/table  |
-- | `DEFAULT`         | Add default values   |


-- syntax
-- alter table table_name add column datatype;


--  example

-- first we can create table then alter 

create table empdummy3(emp_name VARCHAR(20),emp_age int,emp_salary decimal(10,2));


-- we forgot to add emp_id for above table so here alter work with any new table creation we can alter existing table

ALTER TABLE empdummy3
ADD emp_id VARCHAR(10);



-- checking table structure now :: 

SELECT * FROM empdummy3;