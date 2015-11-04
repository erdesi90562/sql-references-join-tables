-- get information using addresses join table
SELECT p.given_name, p.surname, c.country, a.category
-- the code that follows connects people to cities through addresses
FROM people AS p
INNER JOIN addresses AS a
  ON a.person_id = p.id
INNER JOIN cities AS c
  ON a.city_id = c.id
-- the code that precedes connects people to cities through addresses
--WHERE a.category != 'home'
;

SELECT a.category, c.name, c.country
-- the code that follows connects cities to people through addresses
FROM cities c
INNER JOIN addresses a
  ON a.city_id = c.id
INNER JOIN people p
  ON a.person_id = p.id
-- the code that precedes connects cities to people through addresses
WHERE p.surname = 'Grant'
;
