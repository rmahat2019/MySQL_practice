drop database trigger_demo;
create database trigger_demo;
use trigger_demo;


create table users(
          username varchar(100),
          age int
);

insert into users(username, age)
values ( 'nanan', 19),
('jasj', 39);

select * from users;