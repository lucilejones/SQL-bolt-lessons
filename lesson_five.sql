-- SELECT QUERY
SELECT column, another_column, ... 
-- or *
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;

-- city, country, population, latitude, longitude
-- North America: all the cities have positive latitudes and negative longitudes

-- List all the Canadian cities and their populations
SELECT City, Population FROM north_american_cities WHERE Country = "Canada";

-- Order all the cities in the US by their latitude from north to south
SELECT City, Latitude FROM north_american_cities WHERE Country = "United States" ORDER BY Latitude DESC;

-- List all the cities west of Chicago, ordered from west to east
SELECT City, Longitude FROM north_american_cities WHERE Longitude < -87.629798 ORDER BY Longitude ASC;

-- List the two largest cities in Mexico (by population)
SELECT City, Population FROM north_american_cities WHERE Country = "Mexico" ORDER BY Population DESC LIMIT 2;

-- List the third and fourth largest cities (by population) in the US and their population
SELECT City, Population FROM north_american_cities WHERE Country = "United States" ORDER BY Population DESC LIMIT 2 OFFSET 2;