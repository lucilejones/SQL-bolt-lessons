-- If the GROUP BY clause is executed after the WHERE clause, we need a way to filter the grouped rows
-- HAVING - used specifically within teh GROUP BY clause to filter grouped rows from the result set

SELECT group_by_column, AGG_FUNC(column_expression) AS aggregate_result_alias, …
FROM mytable
WHERE condition
GROUP BY column
HAVING group_condition;

-- HAVING contraints are written the same as WHERE contraints and are applied to the grouped rows

-- role, name, building, years_employed


-- Find the number of Artists in the studio (without a HAVING clause)
SELECT Role, COUNT(Role) FROM employees WHERE Role = "Artist";

-- Find the number of Employees of each role in the studio
SELECT Role, COUNT(Role) FROM employees GROUP BY Role;

-- Find the total number of years employed by all Engineers
SELECT Role, SUM(Years_employed) FROM employees WHERE Role = "Engineer";