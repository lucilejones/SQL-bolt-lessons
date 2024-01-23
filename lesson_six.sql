-- Entity data is often broken down into pieces and stored across multiple orthogonal tables
-- process called normalization

-- Tables that share info about a single entity need to have a primary key
-- the primary key identifies that entity uniquely across teh database

-- INNER JOIN
SELECT column, another_table_column, …
FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

-- Matches rows from the first table and second table which have the same key
-- defined by the ON constraint
-- creates a result row with combined columns from both tables

-- id, title, director, year, length_minutes
-- movie_id, rating, domestic_sales, international_sales

-- Find the domestic and international sales for each movie
SELECT Title, Domestic_sales, International_sales FROM movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.Movie_id;

-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT Title, Domestic_sales, International_sales FROM movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.Movie_id WHERE International_sales > Domestic_sales;

-- List all the movies by their ratings in descending order
SELECT Title, Rating FROM movies INNER JOIN Boxoffice ON Movies.id = Boxoffice.Movie_id ORDER BY Rating DESC;