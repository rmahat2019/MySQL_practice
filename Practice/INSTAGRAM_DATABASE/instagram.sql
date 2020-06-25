 drop database instagram_clone_db;
create database instagram_clone_db;
use instagram_clone_db;

create table users(
id int auto_increment primary key,
username varchar(225) unique  not null,
created_at timestamp default now());

insert into users(username) values('rmahat'), ('bluecat');

select * from users;

create table photos(
     id int auto_increment primary key,
      image_url varchar(225) not null,
      user_id int not null,
      created_at timestamp default now(),
    foreign key(user_id) references users(id));
    
insert into photos( image_url, user_id) 
        values('/shsdfkdjd',1),
              ('/ndhdhgh', 2);
              
select * from photos;


select photos.image_url, users.username from users
join photos
  on users.id = photos.user_id;
  
  
create table likes(
       user_id int not null,
    photo_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id),
    primary key (user_id, photo_id)
);

insert into likes(user_id, photo_id) 
    values( 1, 2), (2,1);


select * from likes;


create table follows(
      follower_id int not null,
      followee_id  int not null,
    created_at timestamp default now(),
    foreign key(follower_id) references users(id),
    foreign key(followee_id) references users(id),
    primary key(follower_id, followee_id)
);


insert into follows( follower_id, followee_id)
values (1, 2);

select * from follows;


create table tags(
id int auto_increment primary key,
    tag_name varchar(225) unique,
    created_at timestamp default now()
    
);


create table photo_tag(
      photo_id int not null,
    tag_id int not null,
    foreign key(photo_id) references photos(id),
    foreign key(tag_id) references tags(id),
    primary key (photo_id, tag_id)
);