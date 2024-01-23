-- When writing WHERE columns with columns containing text data
-- SQL has operators that can do case-insensitive string comparison and wildcard patter matching

-- A few common operators:
-- = case sensitive exact string comparison
-- != or <> case sensitive exact string inequality comparison
-- LIKE case insensitive exact string comparison
-- NOT LIKE case insensitive exact string inequality comparison
-- % used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE)
-- _ used anywhere in a string to match a single character (only with LIKE or NOT LIKE)
-- IN (...) string exists in a list
-- NOT IN (...) string does not exist in a list

-- Full-text search is best left to dedicated libraries that are designed to do full text seach
-- examples: Apache Lucene or Sphinx

id, title, directo, year, length_minutes

-- Find all the Toy Story movies
SELECT * FROM movies WHERE Title LIKE "Toy Story%";

-- Find all the movies directed by John Lasseter
SELECT * FROM movies WHERE Director = "John Lasseter";

-- Find all the movies (and director) not directed by John Lasseter
SELECT Title, Director FROM movies WHERE Director != "John Lasseter";

-- Find all the WALL-* movies
SELECT * FROM movies WHERE Title LIKE "WALL-_";