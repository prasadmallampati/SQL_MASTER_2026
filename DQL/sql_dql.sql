-- Interview:
-- DML works on TABLE DATA.

-- ==========================================================
-- DQL (Data Query Language)
-- ==========================================================

-- Purpose:
-- Used to retrieve data.

-- SELECT -> Fetch employee records.

SELECT *
FROM Employee;

SELECT Emp_Name,Salary
FROM Employee
WHERE Salary > 60000;

-- Interview:
-- DQL is used to READ data.


-- Q: Which command fetches data?
-- A: DQL


-- DDL -> Design the Table
-- DML -> Modify the Data
-- DQL -> Query the Data
-- DCL -> Control User Access
-- TCL -> Transaction Control