-- ==========================================================
-- DCL (Data Control Language)
-- ==========================================================

-- Purpose:
-- Used to manage permissions.

-- GRANT -> Gives access.

GRANT SELECT
ON Employee
TO User1;

-- REVOKE -> Removes access.

REVOKE SELECT
ON Employee
FROM User1;

-- Interview:
-- DCL controls WHO CAN ACCESS THE DATA.