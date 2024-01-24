-- A DELETE statement deletes data from a table in a database
DELETE FROM mytable
WHERE condition;

-- Leaving off the WHERE constraint will remove all the rows (clearing out the table completely)

-- Similar to UPDATE, it's recommended to run a SELECT query to check we're removing the right rows

-- id, title, director, year, length_minutes

-- Remove all movies released before 2005
DELETE FROM Movies
WHERE Year < 2005;

-- Remove movies directed by Andrew Stanton
DELETE FROM Movies
WHERE Director = "Andrew Stanton";