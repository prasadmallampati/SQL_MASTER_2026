-- NUMBER TYPE 
--  WE STORE DATA LIKE NUMBER FORMAT 
--  INT,SMALLINT,BIGINT,DECIMAL(),FLOAT


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