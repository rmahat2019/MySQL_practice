# select title from books where title like '%stories%';


# select title, pages from books order by pages desc limit 1;



# select 
#    concat(
#           title, '-', released_year) as summary from books order by released_year desc limit 3;
          
          
          
        


# SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';
 
 
 
# SELECT title, released_year, stock_quantity 
# FROM books ORDER BY stock_quantity LIMIT 3;



 
# SELECT title, author_lname 
# FROM books ORDER BY author_lname, title;


 
# SELECT title, author_lname 
# FROM books ORDER BY 2,1;


 
# SELECT
#     CONCAT(
#         'MY FAVORITE AUTHOR IS ',
#         UPPER(author_fname),
#         ' ',
#         UPPER(author_lname),
#         '!'
#     ) AS yell
#   FROM books ORDER BY author_lname;