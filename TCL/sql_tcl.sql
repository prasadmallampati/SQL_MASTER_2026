
-- ==========================================================
-- TCL (Transaction Control Language)
-- ==========================================================

-- Purpose:
-- Used to manage transactions.

BEGIN TRANSACTION;

UPDATE Employee
SET Salary=100000
WHERE Emp_ID=1;

-- Save changes permanently

COMMIT;

-- OR

ROLLBACK;

-- Undo changes if mistake happens.

-- SAVEPOINT Example

SAVE TRANSACTION SalaryUpdate;

-- Interview:
-- TCL is used to SAVE or UNDO changes.


-- TCL -> Transactions
-- COMMIT, ROLLBACK, SAVEPOINT

-- Q: Which command manages transactions?
-- A: TCL



-- DDL -> Design the Table
-- DML -> Modify the Data
-- DQL -> Query the Data
-- DCL -> Control User Access
-- TCL -> Transaction Control


-- DDL -> Creates or modifies table structure.
-- DML -> Inserts, updates, and deletes data.
-- DQL -> Retrieves data using SELECT.
-- DCL -> Grants and revokes user permissions.
-- TCL -> Commits or rolls back transactions.