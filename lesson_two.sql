-- we use a WHERE clause to filter certain results from being returned
-- we can create complex clauses with AND, OR, =, !=, <, <=, >, >=
-- BETWEEN ... AND ..., NOT BETWEEN ... AND ..., IN (...), NOT IN (...)


-- Find the movie with a row if of 6
SELECT * FROM movies WHERE id = 6;

-- Find the movies released in the years bewteen 2000 and 2010
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

-- Find the movies not released in the years between 2000 and 2010
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;

-- Find the first 5 Pixar movies and their release year
SELECT Title, year FROM movies WHERE id <= 5;