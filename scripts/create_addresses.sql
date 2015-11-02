-- create addresses connecting people and places
CREATE TABLE addresses(id SERIAL PRIMARY KEY,
                       number INTEGER,
                       street TEXT,
                       person_id INTEGER REFERENCES people(id),
                       place_id INTEGER REFERENCES places(id));
