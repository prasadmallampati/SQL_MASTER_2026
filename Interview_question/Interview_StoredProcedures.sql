
-- ==========================================================
-- STORED PROCEDURE IN SQL
-- ==========================================================

-- 1. What is a Stored Procedure?
-- ----------------------------------------------------------
-- A Stored Procedure is a pre-written and stored collection
-- of SQL statements inside the database that can be executed
-- whenever needed.

-- Simple Words:
-- A Stored Procedure is like a function in programming.
-- Write once, save it, and execute it many times.

-- ==========================================================
-- 2. Why was it introduced?
-- ==========================================================

-- Before Stored Procedures:
-- * Developers wrote the same SQL queries repeatedly.
-- * Duplicate code.
-- * Difficult maintenance.
-- * Security issues.
-- * More chances of errors.

-- Stored Procedures were introduced to:
-- * Reuse code.
-- * Store business logic in the database.
-- * Improve performance.
-- * Increase security.
-- * Simplify maintenance.

-- ==========================================================
-- 3. Basic Syntax
-- ==========================================================

CREATE PROCEDURE procedure_name
AS
BEGIN
    -- SQL Statements
END;

-- ==========================================================
-- Example
-- ==========================================================

CREATE PROCEDURE GetEmployees
AS
BEGIN
    SELECT * FROM Employee;
END;

-- Execute Procedure

EXEC GetEmployees;

-- ==========================================================
-- 4. Main Agenda (Purpose)
-- ==========================================================

-- 1. Code Reusability
-- 2. Better Performance
-- 3. Improved Security
-- 4. Easy Maintenance
-- 5. Centralized Business Logic

-- ==========================================================
-- 5. Where to Use?
-- ==========================================================

-- * Payroll Processing
-- * Order Management Systems
-- * Banking Transactions
-- * Report Generation
-- * Inventory Management
-- * Employee Management Systems

-- ==========================================================
-- 6. When to Use?
-- ==========================================================

-- Use Stored Procedures when:
-- * Same query runs multiple times.
-- * Multiple SQL statements execute together.
-- * Business logic should stay in the database.
-- * Security is important.
-- * Transactions need to be managed.

-- Avoid for simple one-time queries.

-- ==========================================================
-- 7. Real-World Example
-- ==========================================================

-- E-Commerce Website - 

-- When a customer places an order:
-- 1. Check product stock.
-- 2. Create order.
-- 3. Reduce inventory.
-- 4. Generate invoice.
-- 5. Save transaction history.

-- Instead of writing all SQL every time:

EXEC PlaceOrder(101,2);

-- The Stored Procedure performs all these steps automatically.

-- ==========================================================
-- Interview One-Line Answer
-- ==========================================================

-- Stored Procedure:
-- A precompiled set of SQL statements stored in the database
-- to improve reusability, performance, security,
-- and maintainability.

-- ==========================================================
-- Easy Analogy
-- ==========================================================

-- SQL Query        -> Do the work manually every time.
-- Stored Procedure -> Save the work as a template and
--                     execute it with one command.

-- ==========================================================
-- Simple Practical Example
-- ==========================================================

-- Create Stored Procedure

CREATE PROCEDURE getEmployee
AS
BEGIN
    SELECT * FROM Employee;
END;

-- Execute Stored Procedure

EXEC getEmployee;

-- ==========================================================
-- Check Whether Procedure Exists
-- ==========================================================

SELECT *
FROM sys.procedures
WHERE name = 'getEmployee';

-- OR

SP_HELP getEmployee;




-- ==========================================================
-- VERY SHORT INTERVIEW REVISION
-- ==========================================================

-- What is Stored Procedure?
-- Saved SQL code executed many times.

-- Why introduced?
-- To avoid duplicate code and improve performance.

-- Advantages?
-- Reusability, Performance, Security, Maintenance.

-- Procedure vs Function?
-- Procedure performs actions.
-- Function returns a value.

-- Input Parameter?
-- Sends value into procedure.

-- Output Parameter?
-- Returns value from procedure.

-- CREATE?
-- CREATE PROCEDURE

-- MODIFY?
-- ALTER PROCEDURE

-- DELETE?
-- DROP PROCEDURE

-- Error Handling?
-- TRY...CATCH

-- Transactions?
-- COMMIT for success.
-- ROLLBACK for failure.



-- Stored Procedure:
-- A precompiled collection of SQL statements stored in the
-- database to improve reusability, performance,
-- security, and maintainability.








