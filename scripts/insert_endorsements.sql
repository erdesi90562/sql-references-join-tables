-- insert endorsements connecting people and skills
INSERT INTO endorsements(endorser,years_experience, person_id, skill_id)
  SELECT 'Antony', 4,
    (SELECT id
      FROM people
      WHERE surname = 'Pearce'
        AND given_name = 'Eunice'),
    (SELECT id
      FROM skills
      WHERE language = 'Ruby'
        AND framework = 'Rails')
  UNION
  SELECT 'Drew', 2,
    (SELECT id
      FROM people
      WHERE surname = 'Mcintosh'
        AND given_name = 'Marla'),
    (SELECT id
      FROM skills
      WHERE language = 'Ruby'
        AND framework = 'Rails')
  UNION
  SELECT 'Patti', 3,
    (SELECT id
      FROM people
      WHERE surname = 'Mcintosh'
        AND given_name = 'Marla'),
    (SELECT id
      FROM skills
      WHERE language = 'Javascript'
        AND framework = 'jQuery')
  UNION
  SELECT 'Donna', 1,
    (SELECT id
      FROM people
      WHERE surname = 'Mcintosh'
        AND given_name = 'Marla'),
    (SELECT id
      FROM skills
      WHERE language = 'Javascript'
        AND framework = 'jQuery')
;
