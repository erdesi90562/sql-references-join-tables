-- create addresses connecting people and cities
CREATE TABLE addresses (
  id SERIAL PRIMARY KEY,
  no INTEGER,
  name VARCHAR,
  city_id INTEGER REFERENCES cities,
  person_id INTEGER REFERENCES people
);
