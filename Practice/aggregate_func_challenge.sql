# # select count(*) from books;

# # select released_year, count(*) from books group by released_year;
# # select sum(stock_quantity) from books;

# select 
#       concat(
#              author_lname, ' ', author_fname) as authors, avg(released_year) from books
#               # group by author_lname, author_fname;


# select 
#      concat(
#              author_lname, ' ', author_fname) as authors, pages from books
#              where pages = (select Max(pages) from books);
             
# select 
#      concat(
#              author_lname, ' ', author_fname) as authors, pages from books
#              order by pages desc limit 1;



select 
    released_year, count(*), avg(pages) from books group by released_year;