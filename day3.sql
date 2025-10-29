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

-- limit offset
-- first 5 rows

select * from actor
limit 5;

select * from actor
order by actor_id desc
limit 5;


-- skip first 10 rows and give next 5 rows

select * from actor
limit 5 offset 10;

-- getting null values

use world;

show tables;

select * from country;
select * from country where indepyear is null;

-- find all countries who were rulled 
-- by some another emperor
select * from country where indepyear > 0;

select * from country where indepyear < 0;


-- find all countries who were rulled 
-- by some another emperor
select * from country
where indepyear is not null;

-- aggregate functions -> Numeric columns
/*
1. sum()
2. min()
3. max()
4. count()
5. avg()
*/

-- find total population of world
select * from country;
select sum(population) as total_population
from country;

-- find maximum population of world
select max(population) from country;

select * from country
where population = 1277558000;

select min(population) from country;

select * from country
where population = 0;


select count(*) from country;


select count(*) from country
where indepyear is null;

select count(*) from country
where indepyear < 0;

select avg(population) from country;

-- find all the continent in world
select distinct continent from country;

-- find total number of countries in each continent

select continent, count(*) from country
group by continent;

-- find all the continent which are having more than
-- 40 countries


select continent, count(*) as country_count 
from country
group by continent
having country_count > 40;

select continent, sum(population) from country
group by continent;