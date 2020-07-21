DROP TABLE IF exists customers;
DROP TABLE IF EXISTS hotels;
DROP TABLE IF EXISTS bookings;


select * from customers c2   
Exercise 1
alter table customers add column date_of_birth date;
alter table customers rename column date_of_birth to birthdate;
alter table customers drop column birthdate;

Exercise 1
create table test();
select * from test;
drop table test;

Exercise 3
select * from hotels h2 
update hotels 
set postcode='L10XYZ'
where id =2;

select * from hotels order by id; 
update hotels 
set rooms =25
where id=7;

select * from customers order by id;
update customers 
set address ='2 Blue Street', city = 'Glasgow', postcode = 'G11ABC'
where ID=6;


select * from bookings b2 order by id 

update bookings
set nights=5
where customer_id=1 and hotel_id=1;



Exercise: 4
select * from bookings b2 
delete from bookings 
where customer_id = 8 and checkin_date ='2020-01-03';

delete from bookings 
where customer_id =6;

select * from customers c2 
delete from customers c3 
where id=6;

Exercise: 5
SELECT * FROM customers INNER JOIN bookings ON customers.id=bookings.customer_id;

SELECT * FROM bookings
INNER JOIN customers ON customers.id=bookings.customer_id
INNER JOIN hotels ON hotels.id=bookings.hotel_id;

SELECT bookings.checkin_date,customers.name,hotels.name FROM bookings
INNER JOIN customers ON customers.id=bookings.customer_id
INNER JOIN hotels ON hotels.id=bookings.hotel_id
WHERE customers.id=1;

select * from customers c2 ;
SELECT * FROM bookings
INNER JOIN customers ON customers.id=bookings.customer_id
where checkin_date>'2020-01-01';

select * from hotels h2 ;
select customers.name, bookings.checkin_date, bookings.nights from customers 
inner join bookings on bookings.id =customers.id 
where hotel_id =5;

select bookings.checkin_date, customers.name, hotels.name from bookings  
inner join customers  on customers .id =bookings .customer_id 
inner join hotels on hotels .id =bookings .hotel_id 
where bookings .nights >3;

Exercise 6
select * from customers c 
where name like 'S%'

select * from hotels h 
where name like '%Hotel%';

select bookings.checkin_date, customers."name", hotels."name" from bookings 
inner join customers on customers.id = bookings.customer_id 
inner join hotels on hotels.id=bookings.hotel_id 
order by bookings.nights desc ;

