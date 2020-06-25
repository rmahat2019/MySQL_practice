# # # select author_lname, count(*) from books group by author_lname;


# # # select author_lname, author_fname, count(*) from books group by author_lname, author_fname;


# # select released_year, count(*) from books group by released_year;



# # select min(released_year) from books;

# # select max(released_year) from books;

# # 

# # select title, pages from books ;
# # select title, pages from books where pages = (select max(pages) from books);


# # select author_lname, author_fname, max(released_year) from books group by author_lname,author_fname;



# #SUM 
# # select sum(pages) from books;
# # select sum(released_year) from books;

# # select author_lname, author_fname, sum(pages) from books group by author_lname, author_fname;
# # 
# #Averages 
# # select avg(pages) from books;

# select title, avg(stock_quantity) from books group by released_year;