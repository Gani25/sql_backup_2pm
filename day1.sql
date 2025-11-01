show databases;
use sakila;

show tables;

select * from customer;

select customer_id, first_name, last_name
from customer;

select * from rental;

-- operators
/*
1. Arithmetic Operator
+
-
*
/
div
% -> Modulus
*/

select 11*3;
-- as -> aliases -> another name for column
select 11*3 as multiply;

select 11 / 3 as decimal_quotient, 11 % 3 as remainder,
11 div 3 as integer_quotient ;

select * from film;
-- I want film_id, title, release_year, rental_rate 
-- from film table

select film_id, title, release_year, rental_rate
from film;

select film_id, title, release_year, 
rental_rate as rental_rate_usd
from film;

select film_id, title, release_year, 
rental_rate as rental_rate_usd,
rental_rate * 85 as rental_rate_inr
from film;

-- add 18% TAX ON INR AMOUNT


select film_id, title, release_year, 
rental_rate as rental_rate_usd,
rental_rate * 85 as rental_rate_inr,
rental_rate * 85 + 0.18 * rental_rate * 85
as rental_rate_inr_tax
from film;
