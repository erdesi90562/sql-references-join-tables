-- create endorsements connecting people and skills
create table endorsement (
  id serial primary key,
  person_id integer NOT NULL references people,
  skills_id integer NOT NULL references skills,
  message text
);
