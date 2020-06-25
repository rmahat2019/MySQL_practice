# select reverse(upper('Why does my cat look at me with such hatred?');


# select replace (concat ('I', ' ', 'like', ' ', 'cats'), ' ', '-');


# show databases;
# use book_shop;
# show tables;
# select
#        replace(title, ' ', '->') as title
#        # from books;



# select 
#      author_lname as forward, reverse(author_lname) as backward
#      from books;




# select 
#     upper(
#         concat(author_fname, ' ', author_lname) 
#        ) as 'author full_name in caps'
#        from books;



# select 
#      concat(title, ' ', 'was releases in', ' ', released_year) as blurbs
#      from books;






# select 
# title, char_length(title)
# from books;




# select 
#      concat(substring(title, 1, 10), "...") as "short title", 
#      concat(author_fname, ',', author_lname) as author, 
#      concat( stock_quantity, ' ', 'in stocks') as quantity 
#    from books;

