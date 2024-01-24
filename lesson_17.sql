-- We can update corresponding tables and database schemas with ALTER TABLE statement
-- add, remove, or modify columns and table constraints

-- We need to specify the data type of the column with any potential table constraints and default values
-- these will be applied to existing and new rows
-- In some databases (like MySQL) we can specify where to insert the new columsn with FIRST or AFTER clauses (but this isn't standard)

ALTER TABLE mytable
ADD column DataType OptionalTableConstraint 
    DEFAULT default_value;

-- Dropping columns is also easy if the database has this feature
-- otherwise, we may have to create a new table and migrate the data over

ALTER TABLE mytable
DROP column_to_be_deleted;

-- We can use the RENAME TO clause to rename the table itself
ALTER TABLE mytable
RENAME TO new_table_name;

-- id, title, director, year, length_minutes

-- Add a column named Aspect_ratio with a FLOAT data type
ALTER TABLE Movies
ADD Aspect_ratio FLOAT;

-- Add a column named Language with a TEXt data type, the default is English
ALTER TABLE Movies
ADD Language TEXT
    DEFAULT 'English';
    