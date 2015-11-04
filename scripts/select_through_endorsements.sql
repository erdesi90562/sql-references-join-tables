-- get information using endorsements join table
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

SELECT p.given_name, p.surname, s.language, s.framework, e.endorser
FROM people p
INNER JOIN endorsements e
  ON e.person_id = p.id
INNER JOIN skills s
  ON e.skill_id = s.id
-- WHERE s.language = 'Ruby'
WHERE s.framework = 'Sinatra'
;

SELECT s.language, s.framework

FROM skills s
INNER JOIN endorsements e
  ON e.skill_id = s.id
INNER JOIN people p
  ON e.person_id = p.id

WHERE p.surname = 'Worley'
;


/* Rachel's annotation 009 */
-- get information using endorsements join table
--select says, display some data in a table with columns given_name, surname, endorser, etc
SELECT p.given_name, p.surname, s.language, s.framework, e.endorser
--take the people table, which we'll represent with the letter p
FROM people p
--make another table by joining the people table and the endorsements table (which we'll call e)
--creates a row in the big table for each endorsement that has a person_id
INNER JOIN endorsements e
  ON e.person_id = p.id
--make a bigger table that uses the previous table to makes a row for each skill from the skills table (s) that matches an endorsement that has an skill_id in the skills table
INNER JOIN skills s
  ON e.skill_id = s.id
--from the big table you've created, only show me the rows that have 'Ruby' as the language
WHERE s.language = 'Ruby'
;
