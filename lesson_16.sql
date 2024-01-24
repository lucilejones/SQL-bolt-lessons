-- CREATE TABLE: creates a new tables with new entities and relationships
CREATE TABLE IF NOT EXISTS mytable (
    column DataType TableConstraint DEFAULT default_value,
    another_column DataType TableConstraint DEFAULT default_value,
    …
);

-- The table schema defines a series of columns
-- each column has a name,
-- the type of data allowed in that column,
-- an optional table contraint on values being inserted,
-- and an optional default value

-- If a table already exists with the same name, it will throw an error
-- so we can use the IF NOT EXISTS clause

-- Different databases support different data types 
-- Common types support numeric, string, dates, booleans, binary data
-- Examples:
-- integer, boolean
-- float, double, real
-- character(num_chars), varchar(num_chars), text
-- date, datetime
-- blob

-- each table can have additional table constraints which limit what values can be inserted
-- Examples:
-- primary key
-- autoincrement
-- unique
-- not NULL
-- check (expression)
-- foreign key

-- Example schema for the Movies table:
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER, 
    length_minutes INTEGER
);

-- Create a new table named Database
-- Name - a string
-- Version - a number (floating point)
-- Download_count - integer count
CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);