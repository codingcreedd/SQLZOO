
--Countries that start with y
SELECT name FROM world WHERE name LIKE 'Y%';


-- countries that end with y
SELECT name FROM world
  WHERE name LIKE '%y';

-- countries that contain the letter x
SELECT name FROM world
  WHERE name LIKE '%x%'

--countries that end with land
SELECT name FROM world
  WHERE name LIKE '%land'

--countries that start with C and end with ia
SELECT name FROM world
  WHERE name LIKE 'C%ia'

--country that has oo in the name
SELECT name FROM world
  WHERE name LIKE '%oo%'

--countries that have three or more a in the name
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

--countries that have "t" as the second character.
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

--countries that have two "o" characters separated by two others.
SELECT name FROM world
 WHERE name LIKE '%o__o%'

--countries that have exactly four characters.
SELECT name FROM world
 WHERE name LIKE '____'

--country where the name is the capital city.
SELECT name
  FROM world
 WHERE name = capital

--country where the capital is the country plus "City".
SELECT name FROM world WHERE capital LIKE CONCAT(name, ' City')

--capital and the name where the capital is an extension of name of the country.
SELECT capital, name FROM world 
WHERE LENGTH(capital) > LENGTH(name) 
    AND capital LIKE CONCAT('%', name, '%')

--Show the name and the extension where the capital is a proper (non-empty) extension of name of the country.
SELECT name, REPLACE(capital, name, '') AS Capital
FROM world
WHERE capital LIKE concat(name, '_%')