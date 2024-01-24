-- In SQL the database schema is what describes the structure of each table and the datatypes each column can contain

-- and INSERT statement is used to insert data into a database
-- declares which table to write into
-- declares which columns of data we're filling
-- declares one or more rows of data to insert
-- we can insert multiple rows at a time by listing them sequentially

INSERT INTO mytable
VALUES (value_or_expr, another_value_or_expr, …),
       (value_or_expr_2, another_value_or_expr_2, …),
       …;

-- If we have a table with columns that support default values, and we have incomplete data, 
-- we can insert rows with only the columns of data we have (by specifying them explicitly)

INSERT INTO mytable
(column, another_column, …)
VALUES (value_or_expr, another_value_or_expr, …),
      (value_or_expr_2, another_value_or_expr_2, …),
      …;

-- the number of values need to match the number of columns specified
-- inserting this way is forward compatible; if we add a new column with a default value, 
-- the hard-coded INSERT statements won't have to change

-- We can also use mathematical and string expressions with the values we're inserting
-- This is useful to make sure all the data is formatter a certain way
INSERT INTO boxoffice
(movie_id, rating, sales_in_millions)
VALUES (1, 9.9, 283742034 / 1000000);

-- id, title, director, year, length_minutes
-- movie_id, rating, domestic_sales, international_sales

-- Add the studio's new production, Toy Story 4 to the list of movies
INSERT INTO movies
VALUES (4, 'Toy Story 4', 'Director', 2015, 90);

-- Toy Story 4 has a rating of 8.7, made 340 million domestically, and 270 million internationally
INSERT INTO boxoffice
VALUES (4, 8.7, 340000000, 270000000);