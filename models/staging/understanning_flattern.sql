insert into "DEMO_DB"."PUBLIC"."json_test" (json) values 
('{"root": [{"name": "paliko2", "surname": "shaliko2", "age": 31}, {"name": "john2", "surname": "doe2", "age": 33}, {"name": "jane2", "surname": "some2", "age": 34}]}'),
('{"root": [{"name": "paliko3", "surname": "shaliko3", "age": 30}, {"name": "john3", "surname": "doe3", "age": 33}, {"name": "jane3", "surname": "some3", "age": 34}]}'),
('{"root": [{"name": "paliko4", "surname": "shaliko4", "age": 30}, {"name": "john4", "surname": "doe4", "age": 33}, {"name": "jane4", "surname": "some4", "age": 34}]}'),
('{"root": [{"name": "paliko5", "surname": "shaliko5", "age": 30}, {"name": "john5", "surname": "doe5", "age": 33}, {"name": "jane5", "surname": "some5", "age": 34}]}'),
('{"root": [{"name": "paliko6", "surname": "shaliko6", "age": 30}, {"name": "john6", "surname": "doe6", "age": 33}, {"name": "jane6", "surname": "some6", "age": 34}]}')



select 
  json,
  TO_JSON(PARSE_JSON(json)) as j
from "DEMO_DB"."PUBLIC"."json_test"
table(flatten(TO_JSON(PARSE_JSON(json)), 'root'))
where dt = '2022-01-27 06:24:03.644'