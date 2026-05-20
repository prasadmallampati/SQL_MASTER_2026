-- TOPIC :: INSERT
-- INSERT is used to add new rows (records) into a table. Just like filling a new row in an Excel sheet.


-- why insert introduced 
-- to populate(fill) data into table :: without insert table would be empty 


-- where to use:
--  when new user signup ,new product added ,new order placed

--  how to use
-- insert into table (column1,column2..) values (value1,value2.. )

-- when to user insert 
-- whenever new need to add to database 



-- syntax

-- insert into table_name (columns) values (values );


-- example :: -

-- kpmg company question 

create table insertdemo(brand varchar(10),no_rides INT,rides_own INT,rides_lost int);


insert into insertdemo (brand,no_rides,rides_own,rides_lost) VALUEs('a',3,1,2);
insert into insertdemo (brand,no_rides,rides_own,rides_lost) VALUES('b',3,1,2);
insert into insertdemo (brand,no_rides,rides_own,rides_lost) VALUES('c',4,0,4);
insert into insertdemo (brand,no_rides,rides_own,rides_lost) VALUES('d',2,1,1);
insert into insertdemo (brand,no_rides,rides_own,rides_lost) VALUES('f',2,1,1);
insert into insertdemo (brand,no_rides,rides_own,rides_lost) VALUES('f',1,1,0);


SELECT * from insertdemo;



select sum(no_rides) as total_rides from insertdemo;



select sum(rides_own) as no_rides_own  from INSERTdemo;


SELECT sum(rides_lost) as rides_lost from insertdemo;




select brand from insertdemo
where rides_own = no_rides;


-- rides lost

SELECT brand from insertdemo
where rides_lost>rides_own;