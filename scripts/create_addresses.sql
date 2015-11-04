-- create addresses connecting people and cities
CREATE TABLE addresses (
  id SERIAL PRIMARY KEY,
  category CHARACTER VARYING,
  no INTEGER,
  street CHARACTER VARYING,
  person_id INTEGER REFERENCES people(id),
  city_id INTEGER REFERENCES cities(id)
);
