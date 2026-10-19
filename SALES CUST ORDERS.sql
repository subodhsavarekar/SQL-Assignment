
create table Salespeople
( 
  Snum number,
  Sname Varchar2 (20),
  city Varchar2 (20),
  Comm float,
  primary key (Snum)
);  
  
insert into salespeople values (1001,'Peel','London',.12);  
insert into salespeople values (1002,'Serres','San Jose',.13);
insert into salespeople values (1004,'Monika','London',.11);
insert into salespeople values (1007,'Rifkin','Barcelona',.15);
insert into salespeople values (1003,'Axelrod','New York',.10);
insert into salespeople values (1005,'Franc','London',.26);


select * from salespeople

-------------------------

create table Customers
(
 Cnum number,
 Cname varchar2(20),
 City varchar2(20),
 Rating number,
 Snum number,
 primary key (Cnum),
 foreign key (Snum) references Salespeople(Snum)
);


select * from customers;

insert into customers values (2001,'Hoffman','London',100,1001);
insert into customers values (2002,'Giovanni','Rome',200,1003);
insert into customers values (2003,'Liu','San Jose',200,1002);
insert into customers values (2004,'Grass','Berlin',300,1002);
insert into customers values (2006,'Clemens','London',100,1001);
insert into customers values (2008,'Cisneros','San Jose',300,1007);
insert into customers values (2007,'Pereira','Rome',100,1004);

--------------------------------------------------

Create table ORDERS
(
 Onum number,
 Amt float,
 Odate date,
 Cnum number,
 Snum number,
 primary key (Onum),
 foreign key (Cnum) references Customers(Cnum),
 foreign key (Snum) references Salespeople(Snum)

);

select * from ORDERS

 
insert into ORDERS values (3001, 18.69, TO_DATE('03-10-1996 12:30','DD-MM-YYYY HH24:MI'), 2008, 1007);
insert into ORDERS values (3003, 767.19, TO_DATE('03-10-1996 13:45','DD-MM-YYYY HH24:MI'), 2001, 1001);
insert into ORDERS values (3002, 1900.10, TO_DATE('03-10-1996 12:05','DD-MM-YYYY HH24:MI'), 2007, 1004);
insert into ORDERS values (3005, 5160.45, TO_DATE('03-10-1996 14:00','DD-MM-YYYY HH24:MI'), 2003, 1002);
insert into ORDERS values (3006, 1098.16, TO_DATE('03-10-1996 13:37','DD-MM-YYYY HH24:MI'), 2008, 1007);
insert into ORDERS values (3009, 1713.23, TO_DATE('04-10-1996 15:21','DD-MM-YYYY HH24:MI'), 2002, 1003);
insert into ORDERS values (3007, 75.75, TO_DATE('04-10-1996 16:02','DD-MM-YYYY HH24:MI'), 2002, 1003);
insert into ORDERS values (3008, 4723.00, TO_DATE('05-10-1996 12:07','DD-MM-YYYY HH24:MI'), 2006, 1001);
insert into ORDERS values (3010, 1309.95, TO_DATE('06-10-1996 13:12','DD-MM-YYYY HH24:MI'), 2004, 1002);
insert into ORDERS values (3011, 9891.88, TO_DATE('06-10-1996 13:09','DD-MM-YYYY HH24:MI'), 2006, 1001);
insert into ORDERS values (3012, 3455.78, TO_DATE('04-10-1996 15:21','DD-MM-YYYY HH24:MI'), 2002, 1003);
insert into ORDERS values (3013, 1245.98, TO_DATE('04-10-1996 16:32','DD-MM-YYYY HH24:MI'), 2002, 1003);
insert into ORDERS values (3014, 3721.53, TO_DATE('05-10-1996 12:45','DD-MM-YYYY HH24:MI'), 2006, 1001);
insert into ORDERS values (3015, 734.50, TO_DATE('06-10-1996 13:16','DD-MM-YYYY HH24:MI'), 2004, 1002);
insert into ORDERS values (3016, 1729.67, TO_DATE('06-10-1996 13:07','DD-MM-YYYY HH24:MI'), 2006, 1001);


---------------------------------------

-- 1.	List all customers with a rating of 100.

select Cname,rating from customers where rating = 100;

--2.	Find all records in the Customer table with NULL values in the city column.

select * from customers where city is null;

----3.	Find the largest order taken by each salesperson on each date.

select s.sname,to_date(o.odate), max(o.amt) 
from salespeople s join orders o on s.snum=o.snum
group by to_date(odate),s.sname

--4.	Arrange the Orders table by descending customer number.

select * from orders order by Cnum desc;

--5.	Find which salespeople currently have orders in the Orders table

select s.Snum ,s.sname
from Salespeople S 
inner join Orders O
on S.Snum = O.Snum;

--6.	List names of all customers matched with the salespeople serving them.

select s.snum , s.sname
from salespeople s inner join customers c
on s.Snum = c.Snum;

--7.	Find the names and numbers of all salespeople who had more than one customer.

select s.sname,o.snum 
from salespeople s join orders o 
on s.snum=o.snum
group by s.sname,o.snum 
having count(o.snum)>1;

--8.	Count the orders of each of the salespeople and output the results in descending order.

select s.sname , count(o.snum) as COUNT
from salespeople s join orders o 
on s.snum = o.snum
group by s.sname 
order by count(o.snum) desc;

--9.	List the Customer table if and only if one or more of the customers in the Customer tables are located in San Jose.

select * from customers 
where city='San Jose';

--10.	Match salespeople to customers according to what city they lived in.

select S.sname,S.city,C.cname,C.city
from Salespeople S
inner join Customers C
on S.snum = C.snum
where S.city=C.city;

--11.	Find the largest order taken by each salesperson.

select o.snum, max(o.amt) as largest_order
from salespeople s join orders o 
on s.snum=o.snum 
group by o.snum;

--12.	Find customers in San Jose who has a rating above 200.

select * from customers 
where city = 'San Jose' and rating > 200;

--13.	List the names and commissions of all salespeople in London.

select sname , comm , City from Salespeople
where city = 'London';

--14.	List all the orders of salesperson Monika from the Orders table

select *  
from Salespeople S
inner join Orders O
on S.Snum = O. Snum
where sname = 'Monika'

--15.	Find all customers with orders on October 3.

select C.Cnum,C.Cname,O.Odate
from Customers C
join Orders O
on C.Cnum = O.Cnum
where TO_DATE (Odate) =('03-oct-1996');

--16.	Give the sums of the amounts from the orders table, grouped by date, 

select to_date(odate) AS O_DATE  , sum(amt) TOTAL_AMT from orders
group by to_date(odate);

-------17.	Eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount.

select to_date(odate), sum(amt) TOTAL_AMT from orders
group by to_date(odate)
having sum(amt)<2000;

--18.	Select all orders that had amounts that were greater than at least one of the orders from October 6.
 

--19. Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300.
 

------20. Find all pairs of customers having the same rating. 

select C1.Cname,C2.Cname
from Customers C1
self join Customers C2
on C1.Rating = C2.Rating;

--21. Find all customers with CNUM, 1000 above the SNUM of Serres.


--22. Give the salespeople’s commissions as percentage instead of decimal numbers.
select snum,sname, comm*100 percentage_comm 
from salespeople;

--23.	Find the largest order taken by each salesperson on each date, eliminating those MAX orders, which are less than $3000.00 in value


--24. List the largest orders on October 3, for each salesperson.


--25. Find all customers located in cities where Serres (SNUM 1002) has customers.
select cname,city from customers
where snum=1002;

--26.Select all customers with a rating above 200.
select * from customers where rating >200;

--27. Count the number of salespeople currently listing orders in the Orders table.
select count(snum) from orders ;

--28.	Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson‘s rate of commission.
select c.cname, s.comm 
from salespeople s join customers c 
on s.snum=c.snum
where s.comm*100> 12;

-----29. Find salespeople who have multiple customers.
select * 
from salespeople s join customers c 
on s.snum=c.snum

--30. Find salespeople with customers located in their city.
select s.sname , c.cname 
from  salespeople s join customers c 
on s.snum=c.snum
where s.city = c.city;

--31. Find all salespeople whose name starts with ‘P’ and the fourth character is ‘I’.
select sname from salespeople 
where sname like 'P__l';

----32. Write a query that uses a sub query to obtain all orders for the customer named ‘Cisneros’. Assume you do not know his customer number.


--33.	Find the largest orders for ‘Serres’ and ‘Rifkin’.
select S.Sname, max(Amt)as largest_orders
from orders O join salespeople S
on O.Snum = S.Snum
where S.Sname in ('Serres','Rifkin')
group by S.Sname;

----34.	Extract the Salespeople table in the following order: SNUM, SNAME, COMMISSION, CITY.
select snum,sname,comm,city from salespeople;


--35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.
select * from customers 
where cname between 'A%' And 'G%';

--36.	Select all the possible combinations of customers that you can assign.
select s.snum,c.cnum 
from salespeople s, customers c

--37. Select all orders that are greater than the average for October 4.
select * from orders
where amt > (select avg(amt) 
             from orders
             where to_date(odate) ='04-Oct-96' );
                    

--38.	Write a select command using a correlated sub query that selects the names and numbers of all customers with ratings equal to the maximum for their city.


--39.	Write a query that totals the orders for each day and places the results in descending order.
select to_date(odate), sum(amt) from orders 
group by to_date(odate)
order by sum(amt) desc

--40. Write a select command that produces the rating followed by the name of each customer in San Jose.
select rating , cname from customers 
where city = 'San Jose';

--41.	Find all orders with amounts smaller than any amount for a customer in San Jose.

                                 
--42. Find all orders with above average amounts for their customers.
                

--43.	Write a query that selects the highest rating in each city.
select max (rating), city from customers
group by city;

--44.	Write a query that calculates the amount of the salesperson’s commission on order by a customer with a rating above 100.00


--45.	Count the customers with rating above San Jose’s average.
select count (cnum)from customers 
where rating > (select avg(rating) from customers
                where city = 'San Jose');
                
--46.	Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.


--47.	Find all salespeople that are located in either Barcelona or London.
select sname , city from salespeople
where city in ('Barcelona','London');

--48.	Find all salespeople with only one customer.
select s.sname 
from salespeople s join customers c 
on s.snum=c.snum
group by s.sname
having count(c.snum)=1;

--49.	Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.


----50. Write a query that will give you all orders for more than $1000.00.
select o.snum
from salespeople s join orders o
on s.snum = o.snum
group by o.snum
where o.AMT >1000;


--51.	Write a query that lists each order number followed by the name of the customer who made that order.
select o.onum , c.cname 
from orders o join customers c on 
o.cnum=c.cnum;


--52.	Write 2 queries that select all salespeople (by name and number) who have customers in their cities who they 
--    do not service, one using a join and one a correlated do not service, one using a join and one a correlated 

select s.sname,s.snum 
from salespeople s  join customers c  
on s.snum=c.snum 
where s.city<>c.city;

--53.	Write a query that selects all customers whose ratings are equal than ANY (in the SQL sense) of Serres.


--54.	Write 2 queries that will produce all orders taken on October3 or October 4.
select * from orders
where to_date(odate) ='03-Oct-96' or to_date(odate)='04-Oct-96'

--55.	Write a query that produces all pairs of orders by a given customer. Name that customer and eliminate duplicates.
select c.cname , o.* 
from customers c join orders o on c.cnum=o.cnum 

--56. Find only those customers whose ratings are higher than every customer in Rome.
select * from customers 
where rating > all(select rating 
from customers 
where city='Rome');                                           
 
--57.	Write a query on the customers table whose output will exclude all customers with a rating < = 100.00, unless they are located in Rome.
select * from customers where rating<= 100 and city='Rome';                                         

--58. Find all rows from the Customer table for which the salesperson number is 1001
select * from customers where snum=1001;

--59.	Find the total amount in Orders for each salesperson for which this total is greater than the amount of the largest order in the table.
select snum , sum(amt) from orders 
group by snum
having sum(amt) >(select max(amt)
                  from orders);
                  
--60.	Write a query that selects all orders that have Zeroes or NULL in the Amount field.
select * from orders
where amt is null or amt like '%0%'; 

----61.	Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a rating of less than 200.


--62.	List all salespeople’s names and the commission they have earned.
select sname , comm from salespeople ;
              
----63.	Write a query that produces the names and cities of all customers with the same rating as Hoffman. Write the query using Hoffman’s CNUM rather than his rating, so that it would still be usable if his rating changed.
select cname, city from customers 

--64.	Find all salespeople for whom there are customers that follow them in alphabetical order.
select s.sname,c.cname 
from salespeople s join customers c 
on s.snum=c.snum 
order by s.sname

--65.	Write a query that produces the names and ratings of all customers of all who have above average orders.
select c.cname,c.rating 
from customers c join orders o 
on c.cnum=o.onum
where o.amt > (select avg(amt) from orders);

--66.	Find the sum of all purchases from the Orders table.
select sum(amt)
from orders;

--67.	Write a select command that produces the order number, amount, and date for all rows in the Order table.
select onum, amt,odate 
from orders;

--68.	Count the number of not null rating fields in the Customer table including duplicates.
select count(rating) 
from customers;

--69.	Write a query that gives the names of both the salesperson and the customer for each order after the order number.
select s.sname,c.cname,o.onum 
from salespeople s join customers c 
on s.snum=c.snum 
join orders o on c.cnum=o.cnum;

--70.	List the commissions of all salespeople servicing customers in London
select sname,comm from salespeople 
where snum in(select snum 
              from customers 
              where city='London');


--71.	Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.


--72.	Write a query using the EXISTS operator that selects all salespeople with customers located in their cities who are not assigned to them.


--73.	Write a query that selects all customers serviced by Peel or Motika
select * from customers 
where snum in (select snum
               from salespeople 
               where sname in('Peel','Monika'));
               
               
--74.	Count the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.).
select to_date(odate),count(distinct(snum)) from orders
group by to_date(odate)


--75.	Find all orders attributed to salespeople in London
select * from orders 
where snum in (select snum from salespeople where city ='London');

----76.	Find all orders by customers not located in the same cities as their salespeople.

--77.	Find all salespeople who have customers with more than one current order.
select snum ,count(cnum)
from orders
group by snum
having count(cnum)>1;

--78.	Write a query that extracts from the Customer table every customer assigned to a salesperson who currently has at least one other customer (besides the customer being selected) with orders in the Orders table.
select o.snum,count(o.cnum) from orders o
group by o.snum
having count(cnum)>=1;

--79.	Write a query that selects all customers whose name begins with ‘C’.
select cname from customers 
where cname like 'C%';

--80.	Write a query on the Customers table that will find the highest rating in each city. Put the output in this form:  for the city (city) the highest rating is : (rating).
select 'for the city'||' '||city||' '||'the highest rating is:'||' '||max(rating) City_rating
from customers
group by city;

--81.	Write a query that will produce the Snum values of all salespeople with orders currently in the Orders table without any repeats.
select snum, count(snum)
from orders 
group by snum
having count(snum)=1;

--82.	Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customers’ names and numbers.
select rating ,cname,cnum
from customers 
order by rating desc;

--83.	Find the average commission for salespeople in London.
select avg(comm),city
from salespeople
group by city
having city='London';

----84.	Find all orders credited to the same salesperson that services Hoffman.

--85.	Find all salespeople whose commission is in between 0.10 and 0.12 both inclusive.
select *  from salespeople
where comm between 0.10 and 0.12;

--86.	Write a query that will give you the names and cities of all salespeople in London with commission above 0.10
select sname,city 
from salespeople 
where city='London' and comm>0.10

--87.	What will be the output from the following query? 
SELECT * FROM ORDERS WHERE (AMT < 1000 OR NOT (ODATE = '10/03/1996' AND CNUM > 2003));

--88.	Write a query that selects each customer’s smallest order.
select cnum, min (amt)
from orders
group by cnum;

--89.	Write a query that selects the first customer in alphabetical order whose name begins with ‘G’.
select cname from customers
where cname like 'G%';

--90.	Write a query that counts the number of different not NULL city values in the Customers table.
select count(city)
from customers;

--91.	Find the average amount from the Orders table.
select avg(amt)
from orders;

--92.	What would be the output from the following query?
SELECT*FROM ORDERS WHERE NOT  (Odate =10/03/1996 OR Snum>1006) AND amt. >=1500);

--93.	Find all customers who are not located in San Jose & whose rating is above 200.
select * from customers
where city !='San Jose' and rating >200;

--94.	Give a simpler way to write this query:
SELECT Snum, Sname, city, Comm FROM salespeople WHERE (Comm>0.12 and Comm <0.14);

select * from salespeople 
where comm =0.13;

--95.	Evaluate the following query:
SELECT * FROM orders WHERE NOT ((Odate = 10/03/1996 AND Snum>1002) OR amt>2000);

--96.	Which salespeople attend to customers not in the city they have been assigned to?
select s.sname , c.cname 
from salespeople s join customers c 
on s.snum=c.snum
where s.city<>c.city;

--97.	Which salespeople get commission greater than 0.11 and serving customers rated less than 250?
select s.snum,s.sname 
from salespeople s join customers c 
on s.snum=c.cnum
where s.comm>0.11 and c.rating<250;

----98. Which salespeople have been assigned to the same city but get different commission percentages?

--99. Which salesperson has earned the most by way of commission?
select * from salespeople 
where comm = (select max(comm) from salespeople) ;





