create database salespeoples;
use salespeoples;
-- create table salespeples
CREATE TABLE  salespeoples
(
snum int primary key,
sname varchar(10),
city varchar(10),
comm int
);
insert into salespeoples (snum,sname,city,comm)
values
(1001,'peel','london',12),
(1002,'serres','sanjose',13),
(1004,'motika','london',11),
(1007,'rifkin','barcelon',15),
(1003,'axelro','newyork',10);
select * from salespeoples;




create database pCustomers;
use pCustomers;
-- create table pCustomers

Create table pCustomers

( 
cnum int primary key, 
cname varchar(10), 
city varchar(10),  
snum int  
); 

insert into pCustomers (cnum,cname,city,snum)
values
(2001,'hoffman','london',1001),
(2002,'giovanni','rome',1003),
(2003,'Liu','Sanjose',1002),
(2004,'Grass','Berlin',1002),
(2006,'Clemens','London',1001),
(2008,'Cisneros','Sanjose',1007),
(2007,'Pereira','Rome',1004);
select * from pcustomers;	



create database corders;
use corders;
-- create table corders
Create table corders 

( 
onum int primary key, 
amt int, 
odate date, 
cnum int, 
snum int 
); 

INSERT INTO cOrders(Onum,Amt,Odate,Cnum,Snum)
VALUES (3001,18.69,'1990-10-3',2008,1007),
(3003,767.19 ,'1990-10-3' ,2001, 1001),
(3002 ,1900.10 ,'1990-10-3',2007 ,1004),
(3005,5160.45 ,'1990-10-3', 2003, 1002),
(3006 , 1098.16,'1990-10-3',2008 ,1007),
(3009 ,1713.23 ,'1990-10-4', 2002 ,1003),
(3007  ,75.75 ,'1990-10-4' ,2004 ,1002),
(3008 , 4273.00 ,'1990-10-5' ,2006 ,1001),
(3010 , 1309.95,'1990-10-6',2004 ,1002),
(3011 , 9891.88 ,'1990-10-6', 2006 ,1001);
select * from corders;

select * from Salespeople starta  ;


# 1)Count the number of Salesperson whose name begin with ‘a’/’A’.
SELECT
Sname, COUNT(Sname) AS Salesperson
FROM
SalesPeople
WHERE
Sname LIKE 'A%';


# 2)Display all the Salesperson whose all orders worth is more than Rs. 2000.

SELECT SalesPeople.Sname, (Orders.Amt)    
FROM Orders
INNER JOIN SalesPeople
ON
SalesPeople.Snum= orders.Snum
WHERE Amt > 2000;


# 3)Count the number of Salesperson belonging to Newyork.

SELECT City,
COUNT(Sname) AS Newyork_salesperson
FROM SalesPeople
WHERE City = 'Newyork';





# 4)Display the number of Salespeople belonging to London and belonging to Paris.

SELECT Snum, Sname, City
FROM SalesPeople
WHERE City = 'London''paris';



# 5) Display the number of orders taken by each Salesperson and their date of orders.
 -- to find out the total number of orders by each salesperson
SELECT SalesPeople.Snum, SalesPeople.Sname, Count(Orders.Onum) AS salesperson_total_orders       
FROM SalesPeople
INNER JOIN Orders
ON
SalesPeople.Snum= orders.Snum;
GROUP BYOrders.Snum;


-- to find out the total number of orders for each date
SELECT Odate, Count(Onum) AS total_orders        
FROM Orders
GROUP BY Odate;



 
