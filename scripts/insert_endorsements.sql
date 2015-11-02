-- insert endorsements connecting developers and skills
INSERT INTO endorsements(years_experience, person_id, skill_id)
  SELECT 4,
    (SELECT id FROM people WHERE surname = 'Pearce' AND given_name = 'Eunice'),
    (SELECT id FROM skills WHERE language = 'Ruby' AND framework = 'Rails')
  UNION
  SELECT 2,
    (SELECT id FROM people WHERE surname = 'Mcintosh' AND given_name = 'Marla'),
    (SELECT id FROM skills WHERE language = 'Ruby' AND framework = 'Rails')
  UNION
  SELECT 3,
    (SELECT id FROM people WHERE surname = 'Mcintosh' AND given_name = 'Marla'),
    (SELECT id FROM skills WHERE language = 'Javascript' AND framework = 'jQuery')
;
