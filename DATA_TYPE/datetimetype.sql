--  datetime : date,datetime,time,timestamp

--  if want store date time 


-- | Data Type   | Description             |
-- | ----------- | ----------------------- |
-- | `DATE`      | Stores only date        |
-- | `DATETIME`  | Stores date and time    |
-- | `TIMESTAMP` | Stores timestamp values |
-- | `TIME`      | Stores only time        |


-- example 

create table datetimedemo(
event date,
created_at TIMESTAMP,
event_time time,
event_date_time DATETIME);