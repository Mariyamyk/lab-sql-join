#List the number of films per category.
select C.name, count(fc.film_id)
from category C
inner join film_category FC on FC.category_id=C.category_id
group by C.name;

#Display the first and the last names, as well as the address, of each staff member.
select S.first_name, S.last_name, a.address
from staff S
Inner Join address A on A.address_id=S.address_id;

#Display the total amount rung up by each staff member in August 2005.
select s.last_name, sum(p.amount)
from payment p
inner join staff s on s.staff_id=p.staff_id
where month(p.payment_date)=8
group by s.last_name;

#List all films and the number of actors who are listed for each film.
select film.title, count(fa.actor_id)
from film
inner join film_actor FA on FA.film_id=film.film_id
group by film.title;

#Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
select * from payment;

select c.last_name, sum(p.amount)
from payment p
inner join customer c on c.customer_id=p.customer_id
group by c.last_name
order by 1 asc;