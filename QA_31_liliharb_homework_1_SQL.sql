<<<<<<< HEAD
--display all fields and all lines
select * from students;

--Display all students in a table
select name from students;

-- Display only user IDs
select ID from students;

--Display only the username
select name from students;

--Display only user e-mail
select email from students;

--Display username and email
select name, email, created_on  from students;

--Display username, email, id,
select ID, name, email from students;

--Display users where password is 12333
select * from students 
where password like '12333';

--Display users which was created 2021-03-26 00:00:00
select * from students 
where created_on like '2021-02-26 00:00:00.000';
select * from students 
where created_on = '2021-03-26 00:00:00';

--Display users with name Anna
select * from students
where name like '%Anna%';

--Display users with name and on 8
select * from students
where name like '%8';

--Display users with name has letter 'a'
select * from students
where name like '%a%';

-- Display users which was created 2021-07-12 00:00:00
select * from students 
where created_on = '2021-07-12 00:00:00';

-- Display users which was created 2021-07-12 00:00:00 and wich have password 1m313
select * from students 
where created_on = '2021-07-12 00:00:00' and
password like '1m313';

-- Display users which was created 2021-07-12 00:00:00 and wich have name with word Andrey
select * from students 
where created_on = '2021-07-12 00:00:00' and
name like '%Andrey%';

-- Display users which was created 2021-07-12 00:00:00 and wich have name with number 8
select * from students 
where created_on = '2021-07-12 00:00:00' and
name like '%8%';

 --Display users with id 110
select * from students
where ID = 110;

 --Display users with id 153
select * from students
where ID = 153;

 --Display users with id > 140
select * from students
where ID > 140;

 --Display users with id < 130
select * from students
where ID < 130;

 --Display users with id < 127 and >188
select * from students
where ID < 127 or ID > 188 ;

 --Display users with id <=137
select * from students
where ID <=137 ;

--Display users with id >=137
select * from students
where ID >=137 ;

--Display users with id >180 or < 190
select * from students
where ID > 180 and ID < 190;

--Display users with id is between 180 and 190
select * from students
where ID between 180 and 190;

--Display users with passwords 12333, 1m313, 123313
select * from students
where password like '12333' or password like '1m313' or password like '123313';

--Display users with created_on = 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students
where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';

--Display user with min id
select min(ID) from students;

--Display user with max id
select max(ID) from students;

-- Display number of users
select count(ID) from students;

 -- Display user ID , name, created_on. Sort the records in ascending order adding users
  select ID, name, created_on
  from students
  order by created_on;
 
  -- Display user ID , name, created_on. Sort the records in descending order adding users
  select ID, name, created_on
  from students
  order by created_on desc;
 

=======
>>>>>>> 884fb3dbda35baf6e960a72a649275e140094753

