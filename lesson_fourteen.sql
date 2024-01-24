-- an UPDATE statement updates existing data
-- we have to specify which table, columns, and rows to update
-- the data we're updating has to match the data type of the columns in the table schema

UPDATE mytable
SET column = value_or_expr, 
    other_column = another_value_or_expr, 
    …
WHERE condition;

-- This takes the multiple column/value pairs and applies those changes to every row that satisfies the contraint in the WHER clause

-- It is super easy to make mistakes updating data
-- selecting the wrong set of rows, or leaving out the WHERE clause (which updates all the rows)
-- helpful tip: write the constraint first in a SELECT query to make sure we're updating the right rows

-- id, title, director, year, length_minutes

-- The director for A Bug's Life should be John Lasseter
UPDATE movies
SET Director = 'John Lasseter'
WHERE Title = "A Bug's Life";

-- Toy Story 2 was actully released in 1999
UPDATE Movies
SET Year = 1999
WHERE Title = 'Toy Story 2';

-- Toy Story 8 should be Toy Story 3 and was directed by Lee Unkrich
UPDATE Movies
SET Title = 'Toy Story 3',
    Director = 'Lee Unkrich'
WHERE Title = 'Toy Story 8';