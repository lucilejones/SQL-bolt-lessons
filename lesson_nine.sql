-- we can use expressions to write more complex logic on clumn values in a query
-- can use math and string functions along with basic arithmetic to transform values

-- physics example:
SELECT particle_speed / 2.0 AS half_particle_speed
FROM physics_data
WHERE ABS(particle_position) * 10.0 > 500;

-- each database has its own supported set of math, string, and date functions
-- to make them easier to read, we can give expressions a descriptive alias using the AS keyword

SELECT col_expression AS expr_description, …
FROM mytable;

-- columns and tables can also have aliases to make them easier to reference in the output

SELECT column AS better_column_name, …
FROM a_long_widgets_table_name AS mywidgets
INNER JOIN widget_sales
  ON mywidgets.id = widget_sales.widget_id;

-- id, title, director, year, length_minutes
-- movie_id, rating, domestic_sales, international_sales

-- List all movies and their combined sales in millions of dollars
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- List all movies and their ratings in percent
SELECT Title, Rating*10
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- List all movies that were released on even numbered years
SELECT Title, Year
FROM movies
  WHERE Year % 2 = 0;