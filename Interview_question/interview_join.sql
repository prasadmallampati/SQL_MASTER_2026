-- join concepts real_world example and useage output as follow what we get which scenario 

/*


1. LEFT JOIN → Returns all rows from the left table and matching rows from the right table; non-matches on the right are `NULL`.

2. RIGHT JOIN → Returns all rows from the right table and matching rows from the left table; non-matches on the left are `NULL`.

3. INNER JOIN → Returns only rows that have matching values in both tables.

4. FULL OUTER JOIN → Returns all matched rows plus all unmatched rows from both tables, filling missing sides with `NULL`.

5. CROSS JOIN → Returns the Cartesian product (every row from Table A combined with every row from Table B).

### Other joins/concepts commonly asked in SQL Server interviews

6. SELF JOIN → A table joined to itself using aliases.

7. CROSS APPLY → Returns rows from the left table only when the table-valued function/subquery returns rows.

8. OUTER APPLY → Returns all rows from the left table; non-matching APPLY results are `NULL`.

9. SEMI JOIN (implemented using `EXISTS`) → Returns left-table rows that have at least one match in the right table.

10. ANTI JOIN (implemented using `NOT EXISTS`) → Returns left-table rows that have no match in the right table.

Most important for interviews: LEFT, RIGHT, INNER, FULL OUTER, CROSS, SELF, and the difference between `EXISTS` and `IN`.

/*

Joins
-----
Table A: 
------
id
1
1
1

Table B: 
-----
id 
1
1 





*/


create table table_a(id int);

create table table_b(id int);



select * from table_a;


select * from table_b;



insert into table_a (id) values (1),(1),(1);


insert into table_b (id) values(1),(1);





/*

we have 
1 left join : Returns all rows from the left table and matching rows from the right table. If no match exists, NULL is returned for right-table columns.
2 right join: Returns all rows from the right table and matching rows from the left table. If no match exists, NULL is returned for left-table columns.
3 full outer join : Returns all matching rows plus all unmatched rows from both tables.
4 inner join : all macthed both tables
5 cross join : Returns rows count of Table A × rows count of Table B (Cartesian Product).
lets do one by one



syntax as follows:

select * from table_1
join_name table_2
on table_1.id = table_2.id


*/



-- will see one by one

/*

1 left join


we have table like  



table_a   table_b
1			1
1			1
1           


output:
left side matched with right side how many times 
1        1
1        1
1        1
1        1
1        1
1        1


*/


-- query for left join

select * from table_a

left join table_b

on table_a.id = table_b.id;


--  done with left join above --







/*
2 right join as follws 


output ::

table a  table b
1		 1
1        1
1

output :
id     id
1       1
1       1
1       1
1       1
1       1 

*/

-- query for right join 
select * from table_a

right join table_b

on table_a.id = table_b.id;



-- end of right join





/*
3  full outer join 
table_a table_b
1       1
1       1
1

output as follows
id     id
1      1
1      1
1      1
1      1
1      1

*/

select * from table_a
full outer join table_b
on table_a.id = table_b.id;



-- end of full outer join



/*

4 : inner join 
table_a table_b
1        1
1        1
1               

*/

-- query for inner join 

select * from table_a
inner join table_b
on table_a.id = table_b.id;


-- end of inner join 



/*
5 cross join : table_a cols count * table_b count
table_a table_b
1       1
1       1
1        
output 
id     id
1      1
1      1
1      1
1      1
1      1
1      1
*/


select * from table_a
cross join table_b;

-- or

select * from table_a,table_b;






*/





















-- let do practice on interview orinted questions on join
/*

Joins
-----
Table A: 
------
id
1
1
1

Table B: 
-----
id 
1
1 





*/


create table table_a(id int);

create table table_b(id int);



select * from table_a;


select * from table_b;



insert into table_a (id) values (1),(1),(1);


insert into table_b (id) values(1),(1);





/*

we have 
1 left join : Returns all rows from the left table and matching rows from the right table. If no match exists, NULL is returned for right-table columns.
2 right join: Returns all rows from the right table and matching rows from the left table. If no match exists, NULL is returned for left-table columns.
3 full outer join : Returns all matching rows plus all unmatched rows from both tables.
4 inner join : all macthed both tables
5 cross join : Returns rows count of Table A × rows count of Table B (Cartesian Product).
lets do one by one



syntax as follows:

select * from table_1
join_name table_2
on table_1.id = table_2.id


*/



-- will see one by one

/*

1 left join


we have table like  



table_a   table_b
1			1
1			1
1           


output:
left side matched with right side how many times 
1        1
1        1
1        1
1        1
1        1
1        1


*/


-- query for left join

select * from table_a

left join table_b

on table_a.id = table_b.id;


--  done with left join above --







/*
2 right join as follws 


output ::

table a  table b
1		 1
1        1
1

output :
id     id
1       1
1       1
1       1
1       1
1       1 

*/

-- query for right join 
select * from table_a

right join table_b

on table_a.id = table_b.id;



-- end of right join





/*
3  full outer join 
table_a table_b
1       1
1       1
1

output as follows
id     id
1      1
1      1
1      1
1      1
1      1

*/

select * from table_a
full outer join table_b
on table_a.id = table_b.id;



-- end of full outer join



/*

4 : inner join 
table_a table_b
1        1
1        1
1               

*/

-- query for inner join 

select * from table_a
inner join table_b
on table_a.id = table_b.id;


-- end of inner join 



/*
5 cross join : table_a rows count * table_b rows count
table_a table_b
1       1
1       1
1        
output 
id     id
1      1
1      1
1      1
1      1
1      1
1      1
*/


select * from table_a
cross join table_b;

-- or

select * from table_a,table_b;







-- now will do on one more example

/*
table_a
-------
1
1
2

table_b
-------
1
1
3

*/


-- will play on above

create table table_aa (id int);
create table table_bb(id int);


insert into table_aa (id) values (1),(1),(2);
insert into table_bb (id) values (1),(1),(3);



-- will do left join on above

/*
left join  : all left rows and matched with right if not null 
table__a table_b
1        1
1        1
2        3
output as follows

id      id
1       1
1       1
1       1
1       1
2       Null
*/

--query for left join
select * from table_aa
left join table_bb
on table_aa.id = table_bb.id;



--end of left join--


-- right join
/*

right join : all right rows and matched with left if not null
table_aa table_bb
1         1
1         1
2         3
output as follows
id       id
1         1
1         1
1         1
1         1
Null      3


*/


--query for right join

select * from table_aa
right join table_bb
on table_aa.id = table_bb.id;



-- end of right join --

/*inner join: all macthed from both tables 

table_aa table_bb
1        1
1        1
2        3

output as follows
id        id
1          1
1          1
1          1
1          1 
*/

--query for inner join

select * from table_aa
inner join table_bb
on table_aa.id = table_bb.id;


-- end of inner join 


/*
full outer join : inner join + left unmatched + right unmatched
table_aa table_bb
1        1
1        1
2        3

output as follows
1       1
1       1
1       1
1       1
2       Null
Null    3

*/


select * from table_aa
full outer join table_bb
on table_aa.id = table_bb.id;

-- end of full outer join 


/*cross join */


select * from table_aa,table_bb;

-- will play with some other tables
/*

table_aaa table_bbb
1          1
2          2
2          3
Null       Null
Null

*/


create table table_aaa (id int);
create table table_bbb(id int);





insert into table_aaa (id) values (1),(2),(2),(Null),(Null);
insert into table_bbb (id) values (1),(2),(3),(Null);



select * from table_aaa;
select * from table_bbb;



-- lets play with left join
/*
output as follows :-
id      id
1       1
2       2
2       2
Null    Null
NUll    NUll
*/

-- query 

select * from table_aaa
left join table_bbb
on table_aaa.id = table_bbb.id;


-- right join
/*output as follows
id     id
1       1
2       2
2       2
NUll   3
NUll   Null
*/

select * from table_aaa
right join table_bbb
on table_aaa.id = table_bbb.id;



-- inner join 

/*
id   id
1    1
2    2
2    2
*/


select * from table_aaa
inner join table_bbb
on table_aaa.id = table_bbb.id


-- full outer join
/*
id   id
1    1
2    2
2    2
Null    Null
NUll    NUll
NUll   3
NUll   Null
*/
-- query 
select * from table_aaa

full outer join table_bbb

on table_aaa.id = table_bbb.id;


-- cross join (row of table_aaa* rows of tables_bbb(5*4))
/*
id  id
1	1
2	1
2	1
NULL	1
NULL	1
1	2
2	2
2	2
NULL	2
NULL	2
1	3
2	3
2	3
NULL	3
NULL	3
1	NULL
2	NULL
2	NULL
NULL	NULL
NULL	NULL





*/
select * from table_aaa,table_bbb;