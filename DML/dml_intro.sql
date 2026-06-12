-- ==========================================================
-- DML (Data Manipulation Language)
-- ==========================================================

-- Purpose:
-- Used to insert, update and delete data.

-- INSERT -> Adds new employee.

INSERT INTO Employee
VALUES(14,'Ramesh',70000,101,1,'2025-01-10');

-- UPDATE -> Modifies employee details.

UPDATE Employee
SET Salary=65000
WHERE Emp_ID=2;

-- DELETE -> Removes employee record.

DELETE FROM Employee
WHERE Emp_ID=14;

-- MERGE -> Insert or Update data.

-- Interview:
-- DML works on TABLE DATA.



-- DDL -> Design the Table
-- DML -> Modify the Data
-- DQL -> Query the Data
-- DCL -> Control User Access
-- TCL -> Transaction Control
