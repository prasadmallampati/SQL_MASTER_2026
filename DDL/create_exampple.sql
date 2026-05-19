--  TOPIC : CREATE USED TO CREATE DATABASE OR TABLE

--  WHY CREATE INTRODUCED BEFORE DOING ANY OPERATION LIKE INSERT OR ANY WE NEED DATABASE OR TABLE STRUCTURE  or 
-- Before inserting any data, the table structure must exist.

-- Why Introduced this 

-- To build new tables, databases, views, etc.

-- Where to Use
-- Creating tables
-- Creating databases
-- Starting a new project

-- WHEN TO USE : When setting up a new database or adding a new entity or table 

-- syntax

-- create table table_name(column1 datatype constraint, column2 datatype)

-- create database  database_name
--  create table table_name(column1 datatype constraints,column2 datatype constraint ...)



--  example for creating database


-- example for creating table 

create table empdummy2(emp_name VARCHAR(10),emp_id VARCHAR(10),emp_age int,emp_salary decimal(12,2));



select * from empdummy2;