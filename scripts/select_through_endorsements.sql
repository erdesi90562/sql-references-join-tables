-- get information using endoresments join table
SELECT p.surname, p.given_name, s.language, s.framework, e.years_experience
FROM people p
INNER JOIN endorsements e
  ON p.id = e.person_id
INNER JOIN skills s
  ON e.skill_id = s.id
WHERE s.language = 'Ruby'
AND e.years_experience > 2
;

SELECT s.language, s.framework, e.years_experience
FROM skills s
INNER JOIN endorsements e
  ON s.id = e.skill_id
INNER JOIN people p
  ON e.person_id = p.id
WHERE p.surname = 'Mcintosh'
AND p.given_name = 'Marla'
;
