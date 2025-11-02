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
