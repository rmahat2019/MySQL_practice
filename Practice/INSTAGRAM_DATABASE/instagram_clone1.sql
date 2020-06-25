# # # # -- 5 oldest users

# # # # # select * from users
# # # # # order by created_at limit 5;

# # # # -- Most popular registration DAY_HOUR

# # # # select dayname(created_at) as day, count(*) as total
# # # # from users 
# # # # group by day
# # # # order by total desc limit 2;

# # # -- identify inactive users (with no photo)

# # # # select users.username, photos.image_url from users
# # # # left join photos
# # # # on users.id = photos. user_id
# # # # where photos.image_url is null;



# # # -- identify  most popular photo and users

# # # select users.username, photos.id, photos.image_url, count(*) as total from photos
# # # join likes
# # # on photos.id = likes.photo_id 
# # # join users 
# # # on photos.user_id = users.id
# # # group by photos.id
# # # order by total desc limit 1;




# # -- average no. of photos per user 
# # select (select count(*) from photos)/(select count(*) from users) as avg;


# -- 5 popular hastags 

# select tags.tag_name, count(*) as total from photo_tags
# join tags 
# on photo_tags.tag_id = tags.id
# group by tags.id
# order by total desc limit 5;

-- users who have liked every single photos 
select users.username, count(*) as total from users 
join likes 
on users.id = likes.user_id
group by users.id
having total = (select count(*) from photos);


