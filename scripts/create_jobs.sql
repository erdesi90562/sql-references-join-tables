-- create jobs connecting people and companies
CREATE TABLE jobs (
  id SERIAL PRIMARY KEY,
  start_date date,
  end_date date,
  companies_id integer NOT NULL references companies,
  people_id integer NOT NULL references people
);
