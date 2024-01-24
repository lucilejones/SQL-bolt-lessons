-- it's always good to try to reduce the possibility of NULL values in a database
-- they need special attention when constructing queries, constraints, and processing results
-- can use 0 for numerical data, empty string for text, etc
-- but it's not always possible
-- NULL values might skew later analysis (ex. when taking averages of numerical data)

-- NULL also shows up with outer-joining
-- we can test a column for NULL values in a WHERE clause using IS NULL or IS NOT NULL

SELECT column, another_column, …
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another_condition
AND/OR …;

-- building_name, capacity
-- role, name, building, years_employed

-- Find the name and role of all employees who have not been assigned to a building
SELECT Name, Role FROM employees WHERE Building IS NULL;

-- Find the names of the buildings that hold no employees
SELECT Building_name FROM Buildings LEFT JOIN Employees ON Buildings.Building_name = Building WHERE Building IS NULL;
