-- order of execution
SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
FROM mytable
    JOIN another_table
      ON mytable.column = another_table.column
    WHERE constraint_expression
    GROUP BY column
    HAVING constraint_expression
    ORDER BY column ASC/DESC
    LIMIT count OFFSET COUNT;

-- Each query begins with finding the data we need, then filtering it down
-- each part is executed sequentially
-- Not every query needs all the parts, but this is the order:

-- 1.
-- FROM and JOINs are first executed to determine the total working set of data
-- includes subqueries in this clause, and can create temporary tables under the hood

-- 2.
-- Then the first-pass WHERE constraints are applied to individual rows;
-- rows that don't satisfy the constraints are discarded
-- each constraintcan only access columns directly from the tables requested in the FROM clause
-- aliases in the SELECT part are not accessible

-- 3.
-- Then the remaining rows are grouped based on common values in the column speficified in the GROUP BY clause
-- there will only be as many rows as there are unique values in that column

-- 4.
-- Then the constraints in the HAVING clause are applied to the grouped rows
-- grouped rows that don't satisfy the contraint are discarded
-- aliases are not accessible

-- 5.
-- Expressions in the SELECT are then computed

-- 6.
-- Of the remaining rows, rows with duplicate values in the column marked DISTINCT will be discarded

-- 7.
-- If there's an ORDER BY the rows are then sorted by the specified data in either asc or desc order
-- we can reference aliases in this clause

-- 8.
-- Then rows that fall outside the range specified by LIMIT and OFFSET are discarded


-- id, title, director, year, length_minutes
-- movie_id, rating, domestic_sales, internaltional_sales
