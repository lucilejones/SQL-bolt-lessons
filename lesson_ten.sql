-- SQL supports the use of aggregate expressions (or functions) to summarize info about a group of rows of data
SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression;

-- each aggregate function will run on the whole set of result rows without a specified grouping
-- it will return a single value
-- giving an alias makes it easier to read

-- common aggregate functions
-- COUNT(*), COUNT(column) - used to count the number of rows in the group if no column is specified
-- or to count the number of rows in a group with non-NULL values in a specified column

-- MIN(column) - finds the smallest numerical value in the specified column for all rows in the group
-- MAX(column) - find the largest numerical value in the specified column for all rows in the group
-- AVG(column) - finds the average numerical value
-- SUM(column) - finds the sum of all numerical values

-- Instead of aggregating across all rows, we can apply the aggregate to individual groups of data within that group
-- Uses the GROUP BY clause (will create as many results as there are unique groups)
-- groups rows that have the same value in the specified column
SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression
GROUP BY column;

-- role, name, building, years_employed

-- Find the longest time that an employee has been at the studio
SELECT Name, MAX(Years_employed) FROM employees;

-- For each role, find the avg number of years employeed by employees in that role
SELECT Role, AVG(Years_employed) FROM employees GROUP BY Role;

-- Find the total number of employee years worked in each building
SELECT Building, SUM(years_employed) FROM employees GROUP BY Building;
