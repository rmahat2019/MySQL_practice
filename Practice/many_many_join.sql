# # select title, rating from series
# # join reviews 
# # on series.id = reviews.series_id;


# # select title, avg(rating) as av_rating from series
# #  join reviews 
# #  on series.id = reviews.series_id
# #  group by title
# #  order by av_rating;


# # select f_name, l_name, rating from reviewers
# #  join reviews 
# #  on reviewers.id = reviews.reviewer_id;

# # select title, rating from series
# #  left join reviews 
# # on series.id = reviews.series_id where rating is null;


# # select genre, round(avg(rating), 2) as avg_rating from series
#  join reviews 
# on series.id = reviews.series_id
# group by genre
# order by avg_rating;



# select f_name, l_name, ifnull(count(rating), 0) as count, ifnull(min(rating), 0) as min, ifnull(max(rating), 0) as max, ifnull(round(avg(rating),2), 0) as avg_rating, 
# case 
# when count(rating) >=1 then "ACTIVE"
# else 'non active'
# end as status
# from reviewers
# left join reviews 
# on reviewers.id = reviews.reviewer_id
# group by l_name, f_name
# order by avg_rating desc;


select title, rating, concat(f_name, ' ', l_name) as reviewer
from reviewers
join reviews
on reviewers.id = reviews.reviewer_id
join series
on series.id = reviews.series_id;