--  other data types : enum and blob 


-- | Data Type | Description                                |
-- | --------- | ------------------------------------------ |
-- | `ENUM`    | Stores one value from a predefined list    |
-- | `BLOB`    | Stores binary large objects (images/files) |


-- example 

CREATE TABLE OtherTypeDemo (

    order_id INT,

    order_status VARCHAR(20)
    CHECK (order_status IN ('Pending', 'Shipped', 'Delivered')),

    photo VARBINARY(MAX)

);