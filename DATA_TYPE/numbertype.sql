-- NUMBER TYPE 
--  WE STORE DATA LIKE NUMBER FORMAT 
--  INT,SMALLINT,BIGINT,DECIMAL(),FLOAT
-- | Data Type  | Stores               | Best Use        |
-- | ---------- | -------------------- | --------------- |
-- | `INT`      | Normal integers      | Age, quantity   |
-- | `BIGINT`   | Large integers       | Large IDs       |
-- | `SMALLINT` | Small integers       | Ratings         |
-- | `TINYINT`  | Very small integers  | Status flags    |
-- | `DECIMAL`  | Exact decimals       | Money           |
-- | `FLOAT`    | Approximate decimals | Scientific data |


-- example
create table numbertypedemo(
    emp_id int,
    mobileno BIGINT,
    rating SMALLINT,
    attendance_status TINYINT,
    salary DECIMAL(10,2),
    temperature FLOAT);


-- if want know check using select

select * from numbertypedemo;