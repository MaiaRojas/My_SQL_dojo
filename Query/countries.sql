USE world;

SELECT * FROM countries;
SELECT * FROM cities;
SELECT * FROM languages;

-- 1.

SELECT countries.name, languages.language AS language, languages.percentage FROM languages
JOIN countries ON languages.country_id = countries.id
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;

-- 2. 

SELECT countries.name, COUNT(*) AS count_cities FROM cities
JOIN countries ON countries.id = cities.country_id
GROUP BY country_id
ORDER BY count_cities DESC;

-- 3.

SELECT cities.name, cities.population FROM countries
JOIN cities ON cities.country_id = countries.id
WHERE countries.name = 'Mexico' AND cities.population > 500000
ORDER BY cities.population DESC;

-- 4.

SELECT name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

-- 5.

SELECT name, surface_area, population FROM countries
WHERE surface_area < 501 AND population > 100000;

-- 6.

SELECT name, government_form, capital, life_expectancy FROM countries
WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy > 75;

-- 7.

SELECT countries.name AS country_name, cities.name AS city_name, district, cities.population FROM cities
JOIN countries ON countries.id = cities.country_id
WHERE countries.name = 'Argentina' AND district = 'Buenos Aires' AND cities.population > 500000;

-- 8.

SELECT countries.region, COUNT(*) AS count_countries  FROM countries
GROUP BY countries.region
ORDER BY count_countries DESC;
