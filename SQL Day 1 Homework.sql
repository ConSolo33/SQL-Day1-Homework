-- Question 1: 2 actors with last name Wahlberg
select first_name, last_name
from actor
where last_name like 'Wahlberg';

-- Question 2: 3,230 payments made between 3.99 and 5.99 
select count(amount) 
from payment
where amount > 3.99 and amount < 5.99;

-- Question 3: There are 72 films that have 8 copies in store
select film_id, count(inventory_id) 
from inventory
group by film_id 
order by count desc;

-- Question 4: There is 1 customer with the first name William
select count(first_name)
from customer
where first_name like 'William';

-- Question 5: Employee 1 had the most rentals
select sum(rental_id), staff_id
from rental
group by staff_id;

-- Question 6: There are 378 distinct district names
select  count(distinct district)
from address;

-- Question 7: Film 508 had the most actors in it
select film_id, count(actor_id) 
from film_actor
group by film_id 
order by count desc;

-- Question 8: There are 21 customers with last name ending in 'es'
select count(last_name) 
from customer
where last_name like '%es';

-- Question 9: There are 3 payment amounts that had a number of rentals greater than 250
select amount, count(distinct payment_id)
from payment
where customer_id >= 380 and customer_id <= 430
group by amount
order by count desc;

-- Question 10: There are 5 rating categories, PG-13 has the most movies with 119,006  
select count(distinct rating) from film;
select sum(film_id), rating from film 
group by rating 
order by sum desc;











