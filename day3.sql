-- Pattern Matching
/*
Like clause
wildcard
%
_
*/

use sakila;

select * from actor;

-- find all actors whose first name starts with A
select * from actor
where first_name like "A%";

select * from actor
where first_name like "AN%";

-- find all actors whose first_name ends with A
select * from actor
where first_name like "%A";


-- find all actors whose first_name contains with A
select * from actor
where first_name like "%A%";

select * from actor
where first_name like "%AL%";
select * from actor
where first_name like "A%E";
select * from actor
where first_name like "A%E%";


-- length restrict = 4char

select * from actor
where first_name like "__";

select * from actor
where first_name like "_____";

select * from actor
where first_name like "A_____";


select * from actor
where first_name like "A___";

select * from actor
where first_name like "A__M";

select * from actor
where first_name like "A__M%";

select * from actor
where first_name like "A__E%";

-- sorting -- Order By
-- asc default, desc
-- single level sort
select * from actor
order by actor_id desc;

select * from actor
order by first_name;

select * from actor
order by first_name desc;

-- multi level sorting


select * from actor
order by first_name, actor_id desc;
