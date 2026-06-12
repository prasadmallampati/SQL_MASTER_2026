-- TOPIC SQL :: STRUCTURED QUERY LANGUAGE WHICH IS USED TO COMMUNICATE WITH DATABASE

-- WHY IT WAS INTRODUCED  :: 
-- 1 Before SQL, databases were hard to use and required complex programming.
-- 2 SQL made it simple — even non-programmers can read and write SQL queries.


--  Where to use?
-- Used everywhere: websites, apps, banks, hospitals, schools — anywhere data is stored in a database 
-- (MySQL, PostgreSQL, Oracle, SQL Server, SQLite).



-- How to  Use?
-- using select * from table_name or select column1,column2 from table_name;


-- where to use
-- we can use wherever we can create,update,delete,update data from database

-- what is difference between sql and no sql

-- sql structured query language also (Relational  Database) under tool mysql,postgres,mssql server

-- nosql :: non relation databases can store flexible format of data
-- like : document ,key:value pairs
-- databases are mango db ,radis ,apache casandra 

-- | Feature        | SQL                     | NoSQL                                 |
-- | -------------- | ----------------------- | ------------------------------------- |
-- | Data Structure | Tables                  | Documents / Key-Value / Graph         |
-- | Schema         | Fixed                   | Flexible                              |
-- | Scalability    | Vertical scaling        | Horizontal scaling                    |
-- | Query Language | SQL                     | Varies                                |
-- | Transactions   | Strong ACID support     | Usually flexible                      |
-- | Best For       | Banking, ERP, analytics | Real-time apps, big data, social apps |



-- Simple Analogy
-- SQL = Organized Excel sheets with strict columns.(mostly in table in sql tables)
-- NoSQL = Flexible JSON files where each record can look different.


-- DDL -> Creates or modifies table structure.
-- DML -> Inserts, updates, and deletes data.
-- DQL -> Retrieves data using SELECT.
-- DCL -> Grants and revokes user permissions.
-- TCL -> Commits or rolls back transactions.


-- DDL -> Design the Table
-- DML -> Modify the Data
-- DQL -> Query the Data
-- DCL -> Control User Access
-- TCL -> Transaction Control