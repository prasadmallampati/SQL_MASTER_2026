-- ==========================================================
-- WINDOW FUNCTIONS
-- ==========================================================

-- Definition:
-- A window function performs calculations across a set of
-- related rows while keeping each row separate in the result.

-- OR

-- Window functions allow you to analyze other rows without
-- using GROUP BY and without losing individual row details.

-- ==========================================================
-- When to use?
-- ==========================================================

-- Use window functions when you need to perform calculations
-- on related rows but still want to display every individual row.

-- ==========================================================
-- Common Use Cases
-- ==========================================================

-- Employee Ranking      -> RANK()
-- Top 3 Salaries        -> ROW_NUMBER()
-- Running Sales         -> SUM() OVER()
-- Previous Month Sales  -> LAG()
-- Next Delivery Date    -> LEAD()
-- Lowest Salary         -> FIRST_VALUE()
-- Highest Salary        -> LAST_VALUE()
-- Customer Segmentation -> NTILE()
-- Department Average    -> AVG() OVER()
-- Product Ranking       -> DENSE_RANK()

-- ==========================================================
-- RANK()
-- ==========================================================

-- Assigns a rank to each row based on an order.
-- Duplicate values get the same rank.
-- The next rank is skipped.

-- Example:
-- Salary : 70000 70000 60000 50000
-- Rank   :   1      1     3     4
-- query :
 select emp_id,salary,
 rank() over (order by salary desc) as rankk
 from Employee;
-- ==========================================================
-- ROW_NUMBER()
-- ==========================================================

-- Assigns a unique number to every row.

-- Example:
-- Salary     : 70000 70000 60000 50000
-- Row Number :   1      2     3     4

-- query 
   select emp_id,salary,
   row_number() over (order by salary desc) as row_num 
   from Employee;

-- ==========================================================
-- DENSE_RANK()
-- ==========================================================

-- Assigns the same rank to duplicate values.
-- The next rank is NOT skipped.

-- Example:
-- Salary      : 70000 70000 60000 50000
-- Dense Rank  :   1      1     2     3

-- query 
   select emp_id,salary,
   DENSE_RANK() over (order by salary desc) as d_rank
   from Employee;

-- ==========================================================
-- SUM() OVER()
-- ==========================================================

-- Used to calculate:
-- 1. Running Total
-- 2. Rolling Sum
-- 3. Cumulative Sum

-- Running Total:
-- Adds values from the first row up to the current row.
select order_date,order_id,amount,
sum(amount) over (
    order by order_date
) as running_total
from order_1;

 -- Rolling Sum:
select order_date,order_id,amount,
sum(amount) over(
    order by order_date
    rows between 2 preceding and current row
) as rolling_sum
from order_1;


-- Calculates the sum for a fixed number of previous rows.
select 
order_date,order_id,amount,
sum(amount) over(
    order by order_date
    rows between 2 preceding and current row
) as sum_fix_prev
from order_1

-- Cumulative Sum:
-- Continuously adds all previous values including the current row.
select order_date,order_id,amount,
sum(amount) over (order by order_date rows between unbounded preceding and current row) as cum_sum
from order_1;



-- ==========================================================
-- LAG()
-- ==========================================================

-- Returns the previous row's value.
  select emp_id,salary,
  lag(salary) over (order by emp_id) as lag_sal
  from Employee;

  -- or using orders
  select order_date,order_id,amount,
lag(amount) over (order by order_date) as lag_sal
from order_1;
-- ==========================================================
-- LEAD()
-- ==========================================================

-- Returns the next row's value.

   select emp_id,salary,
   lead(salary) over(order by emp_id) as lead_val
   from Employee

-- ==========================================================
-- FIRST_VALUE()
-- ==========================================================

    

-- Returns the first value in the window.
  select emp_id,salary,
  first_value(salary) over (order by salary) as f_value
  from Employee

-- ==========================================================
-- LAST_VALUE()

select emp_id,salary,
last_value(salary) over (order by salary rows between unbounded preceding and unbounded following ) as last_sal  from Employee
-- ==========================================================

-- Returns the last value in the window.

-- Note:
-- LAST_VALUE() usually requires:
-- ROWS BETWEEN UNBOUNDED PRECEDING
-- AND UNBOUNDED FOLLOWING
-- to get the actual last value.

-- ==========================================================
-- NTILE()
-- ==========================================================

-- Divides rows into a specified number of equal groups (buckets).

-- Example:
-- NTILE(2) divides the data into 2 groups.

    select 
    emp_id,salary,
    ntile(3) over (order by salary) as group_sal
    from employee

-- ==========================================================
-- AVG() OVER()
-- ==========================================================

-- Calculates the average while keeping all rows in the result.
-- No GROUP BY is required.

  select emp_id,salary,
  avg(salary) over () as avg_sal
  from Employee


-- ==========================================================
-- Interview One-Line Revision
-- ==========================================================

-- RANK()        -> Same rank, skips next rank.
-- ROW_NUMBER()  -> Unique number for every row.
-- DENSE_RANK()  -> Same rank, no gaps.
-- SUM() OVER()  -> Running/Cumulative total.
-- LAG()         -> Previous row value.
-- LEAD()        -> Next row value.
-- FIRST_VALUE() -> First value in window.
-- LAST_VALUE()  -> Last value in window.
-- NTILE()       -> Divide rows into equal buckets.
-- AVG() OVER()  -> Average without GROUP BY.

-- ==========================================================
-- Important Note
-- ==========================================================

-- ORDER BY salary ASC
-- FIRST_VALUE() -> Lowest Salary
-- LAST_VALUE()  -> Highest Salary

-- ORDER BY salary DESC
-- FIRST_VALUE() -> Highest Salary
-- LAST_VALUE()  -> Lowest Salary



-- PARTITION BY
-- Divides rows into groups and applies the
-- window function separately to each group.

select emp_id,
dept_id,
salary,
avg(salary) over(
partition by dept_id
) as dept_avg
from Employee;