-- get information using addresses join table
SELECT people.surname, people.given_name
FROM people
INNER JOIN addresses
  ON people.id = addresses.person_id
INNER JOIN places
  ON places.id = addresses.place_id
WHERE places.name = 'Farmington'
;
