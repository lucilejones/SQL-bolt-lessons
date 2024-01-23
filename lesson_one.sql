-- SELECT statments are queries: statements that declare what data we're looking for,
-- where to find it in the database, and optionally how to transform it before it's returned

-- Each table is a type of entity, and each row is a specific instance of that type

-- Find the title of each movie
SELECT Title FROM movies;

-- Find the director of each film
SELECT Director FROM movies;

-- Find the title and director of each film
SELECT Title, Director FROM movies;

-- Find the title and year of each film
SELECT Title, Year FROM movies;

-- Find all the info about each film
SELECT * FROM movies;