-- create endorsements connecting developers and skills
CREATE TABLE endorsements(id SERIAL PRIMARY KEY,
                          years_experience INTEGER,
                          person_id INTEGER REFERENCES people(id),
                          skill_id INTEGER REFERENCES skills(id))
;
