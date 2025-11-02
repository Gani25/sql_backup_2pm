/*
Filtering -> where condition
Relational Operator
>
<
>=
<=
=
!=
*/

use sakila;

show tables;

select * from actor;

-- find all actors whose actor_id is less than 10
select * from actor
where actor_id < 10;

select * from actor
where actor_id <= 10;

-- find actor whose id is 10
select * from actor
where actor_id = 10;

select * from actor
where actor_id != 10;

select * from actor
where first_name = "Penelope";


select * from actor
where first_name != "Penelope";

select * from actor
where first_name > "Penelope";

-- only 1 conditions

-- more than 1 conditions -> logical operators
/*
and
or
not
*/

select * from actor
where first_name = "penelope" and
actor_id < 100;


select * from actor
where first_name = "penelope" or 
actor_id < 100;

select * from actor;
-- find actor whose fname is penelope as well as 
-- lname is pinkett

-- and 
select * from actor
where first_name = "Penelope" and 
last_name = "Pinkett";

-- not 
select * from actor
where not first_name = "Penelope";


-- DDL (Data Definition Language)
create database backup;
use backup;

create table student 
(
	roll_no int,
    name varchar(50),
    gender varchar(15),
    phone varchar(15),
    addimision_date datetime
);

show tables;

describe student;

-- constraints
drop table student;

show tables;

select current_timestamp;

create table student
(
	roll_no int primary key auto_increment,
    name varchar(50) not null,
    phone varchar(15) unique not null,
    addmision_date datetime not null 
    default current_timestamp,
    last_update datetime on update current_timestamp
);

describe student;

select * from student;

-- enteries -> ROWS/TUPLES/RECORDS
/*
DML -> Data Manipulation Language
Insert
Update
Delete
*/

describe student;

/*
Error Code: 1136. Column count doesn't match 
value count at row 1

*/
insert into student values
(default,"Rohan Tripathi","12345 12345",default);

insert into student values
(default,"Rohan Tripathi","12345 12345",default,null);

select * from student;

/*
Error Code: 1062. Duplicate entry '12345 12345' for key 
'student.phone'
*/
insert into student values
(default,"Rohan Tripathi","12345 12345",default,null);


insert into student values
(default,"Pranjal Tripathi","77777 88888",default,null);

select * from student;
insert into student values
(10,"Shubham Deshmukh","99999 12345","2024-10-25 10:15:00",null);


select * from student;

-- I only want to add values of name and phone
-- insert into selected columns

insert into student(phone, name) values
("52030 52030","Rohit Shetty");

select * from student;

/*
Error Code: 1364. Field 'phone' doesn't 
have a default value

*/
insert into student(name) values
("Rohit Shetty");


insert into student values
(5,"Pranjal Tripathi","10101 88888",default,null);

select * from student;

-- DDL -> Alter
alter table student 
add gender varchar(10);

select * from student;
alter table student
drop gender;


select * from student;

alter table student 
add gender varchar(10) first;

select * from student;

alter table student
drop gender;


select * from student;

alter table student 
add gender varchar(10) after name;

select * from student;

-- UPDATE -> Give conditions
update student 
set gender = "Male"
where roll_no = 1;

select * from student;