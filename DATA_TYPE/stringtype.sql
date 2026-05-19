-- topic : string data type
--  which is used store set of chars like names,gender,description  etc


-- | Data Type    | Description            |
-- | ------------ | ---------------------- |
-- | `VARCHAR(n)` | Variable-length string |
-- | `CHAR(n)`    | Fixed-length string    |
-- | `TEXT`       | Large text data        |



create table stringtypedemo(
name VARCHAR(50),
gender char(1),
DESCRIPTIONS text

);