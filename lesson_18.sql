-- DROP TABLE statement removes an entire table including all its data and metadata
-- different from the DELETE because it also removes the table schema from the database entirely

DROP TABLE IF EXISTS mytable;

-- It may throw an error if the table doesn't exisit
-- If there's another table dependent on columns in the table we're removing (like a foreign key)
-- We'll have to update all depended tables first (updating the dependent rows or removing those tables)

-- Remove the Movies table
DROP TABLE IF EXISTS movies;

-- Remove the BoxOffice table
DROP TABLE IF EXISTS BoxOffice;