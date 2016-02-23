-- insert jobs connecting people and companies
insert into jobs(companies_id, people_id)
  select '2', '1'
    (select id from people where given_name = 'Mister'),
    (select id from skills where framework = 'Ember.js')
  union
  select '2', '1'
    (select id from people where given_name = 'Jonha'),
    (select id from skills where framework = 'Backbone.js')
;
