-- a resulting table from an INNER JOIN only has data that belongs in both of the tables
-- if the tables have asymmetric data, we need a different join
-- LEFT JOIN, RIGHT JOIN, FULL JOIN

SELECT column, another_column, …
FROM mytable
INNER/LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

-- LEFT JOIN includes the rows from table A (the left) even if there's no matching row in B (the right)
-- RIGHT JOIN keeps rows in B even if there's not match found in A
-- FULL JOIN rows from both tables are kept even if no match is found

-- We'll have to write additional logic to deal with NULL

-- building_name, capacity
-- role, name, building, years_employed

-- some of the buildings are new, so they don't have any employees in them yet

-- Find the list of all buildings that have employees
SELECT DISTINCT Building FROM employees LEFT JOIN Buildings ON Employees.Building = Buildings.Building_name;

-- Find the list of all buildings and their capacity
SELECT Building_name, Capacity FROM Buildings;

-- List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT Building_name, Role FROM Buildings LEFT JOIN Employees ON Buildings.Building_name = Employees.Building;
