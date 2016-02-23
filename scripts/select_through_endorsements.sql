-- get information using endorsements join table
select p.given_name, p.surname
  from people p
  inner join endorsement e on e.person_id = p.id
  inner join skills s on e.skills_id = s.id
    where s.framework = 'Ember.js'
  ;
