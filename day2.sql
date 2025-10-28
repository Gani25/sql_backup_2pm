-- day 2

use sakila;
/*
Logical -> when we have more than 
1 conditions to combine


1. and
2. or
3. not
*/

/*
find all actors whose first name is Penelope
as well as their actor_id should be less than 100
*/
select * from actor
where first_name = "Penelope" 
and
actor_id < 100;


/*
find all actors whose first name is Penelope
as well as their actor_id should be less than 100
as well as their last_name should be pinkett
*/
select * from actor
where first_name = "Penelope" 
and
actor_id < 100
and 
last_name = "Pinkett";

/*
find all actors whose first name is Penelope
as well as their actor_id should be less than 100
as well as their last_name should be gupta
*/
select * from actor
where first_name = "Penelope" 
and
actor_id < 100
and 
last_name = "gupta";


select * from actor
where 1 = 2;


select * from actor
where first_name = "Tripathi" 
and
actor_id < 100
and 
last_name = "Pinkett";

-- or
select * from actor
where first_name = "penelope"
or actor_id <= 20;

-- not
select * from actor
where not first_name = "Penelope";

-- in, not in
-- same column -> multiple options search krna ho
-- find actor with first_name 
-- penelope, nick, ed, julia

select * from actor
where first_name in ("Penelope","ED","Nick","Julia");

select * from actor
where first_name in ("Penelope","Yuvraj",
"ED","Nick","Julia");

-- find actor with (first_name, last_name) 
-- (penelope, pinkett),(nick,STALLONE), (ed,GUINESS),
-- (julia, MCQUEEN)

select * from actor
where first_name in ("Penelope","ED","Nick","Julia")
and 
last_name in("pinkett","stallone",
"guiness","mcqueen")
and actor_id in(54,179,27,44);

select * from actor
where first_name not in ("Penelope","Yuvraj",
"ED","Nick","Julia");

-- between, not between
-- same column -> when we have some range
select * from actor
where actor_id between 10 and 20;

-- 10 -20 as well as 50 to 55
select * from actor
where actor_id between 10 and 20 
or actor_id between 50 and 55;