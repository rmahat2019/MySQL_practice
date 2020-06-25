# create table people
#              (name varchar(100),
#              birthdate date,
#              birthtime time,
#               birthdt  datetime
#              );
# insert into people(name, birthdate, birthtime, birthdt)
#              values("rabin", '1985-03-06', '18:30:12', '1985-03-06 18:30:12'),
#              ("upama", '1994-02-14', '15:10:32', '1994-02-14 15:10:32'),
#              ("Alaiyah", curdate(), curtime(), now());
             
             
             
             
             
#              SELECT name, birthdate FROM people;
 
# SELECT name, DAY(birthdate) FROM people;
 
# SELECT name, birthdate, DAY(birthdate) FROM people;
 
# SELECT name, birthdate, DAYNAME(birthdate) FROM people;
 
# SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
 
# SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
 
# SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
 
# SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
 
# SELECT name, birthdt, MONTH(birthdt) FROM people;
 
# SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
 
# SELECT name, birthtime, HOUR(birthtime) FROM people;
 
# SELECT name, birthtime, MINUTE(birthtime) FROM people;
 
# SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
 
# SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
 
# SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
 
# SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;
# Overview
# Q&A
# Notes
# Announcements