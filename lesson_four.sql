-- DISTINCT
-- Because the results of a particular query might not be unique,
-- SQL has a way to discard rows with a duplicate column value
-- This will blindly remove dupliate rows, so in a future lesson we'll learn how to discard duplicates
-- based on specific columns using grouping and the GROUP BY clause

-- ORDER BY
-- a way to sort the results by a given column in ascending or descending order

-- LIMIT
-- will reduce the number of rows to return

-- OFFSET
-- will specify where to begin counting the number of rows from
-- [example of front page of Reddit with most popular post, then each subsequent page]
-- [is a set of links at different offsets in the database]

-- id, title, director, year, length_minutes


-- List all directors of Pixar movies (alphabetically) without duplicates
SELECT DISTINCT Director FROM movies ORDER BY Director;

-- List the last four Pixar movies released (ordered from most recent to least)
SELECT Title, year FROM movies ORDER BY year DESC LIMIT 4;

-- List the first five Pixar movies sorted alphabetically
SELECT Title, year FROM movies ORDER BY Title LIMIT 5;

-- List the next five Pixar movies sorted alphabetically
SELECT Title, year FROM movies ORDER BY Title LIMIT 5 OFFSET 5;