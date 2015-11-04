-- create endorsements connecting people and skills
CREATE TABLE endorsements(
  id SERIAL PRIMARY KEY,
  endorser CHARACTER VARYING,
  years_experience INTEGER,
  skill_id INTEGER REFERENCES skills(id),
  person_id INTEGER REFERENCES people(id)
);
