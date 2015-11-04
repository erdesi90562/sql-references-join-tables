-- insert addresses connecting people and cities
INSERT INTO addresses(no, street, category, person_id, city_id)
  SELECT 100, 'Highland Avenue', 'home',
    (SELECT id
      FROM people
      WHERE surname = 'Grant'
      AND given_name = 'Sabrina'),
    (SELECT id
      FROM cities
      WHERE name = 'Somerville')
  UNION
  SELECT 32, 'Lowell Street', 'home',
    (SELECT id
      FROM people
      WHERE surname = 'Worley'
      AND given_name = 'Sabrina'),
    (SELECT id
      FROM cities
      WHERE name = 'Somerville')
  UNION
  SELECT 1, 'Das Guten', 'chalet',
    (SELECT id
      FROM people
      WHERE surname = 'Grant'
      AND given_name = 'Sabrina'),
    (SELECT id
      FROM cities
      WHERE name = 'Solingen'
        AND country = 'DE')
;
