-- insert endorsements connecting people and skills
insert into endorsement(message, person_id, skills_id)
  select 'Mr. T is totally awesome at Ember and Life',
    (select id from people where given_name = 'Mister'),
    (select id from skills where framework = 'Ember.js')
  union
  select 'Jonha has just started learning backbone, but shows promise',
    (select id from people where given_name = 'Jonha'),
    (select id from skills where framework = 'Backbone.js')
;
