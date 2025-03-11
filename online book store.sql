create database project;

select * from Books

select * from Customers

select * from Orders

--1, Retrive all books in the 'fiction' genre

select *from Books
where Genre = 'Fiction'

--2, find books published after the year 1950

select *from Books
where Published_Year>1950

--3, List all customer from canada
select *from Books
select*from Customers
where Country ='Canada'

--4, Show orders placed in november 2023

select *from Orders
where Order_Date between '2023-11-1' and '2023-11-30'

--5, Retrive the total stock of book availble

select sum(Stock) as 'total stock'
from Books

--6, Find the details of the most expensive book;

select top 1*
from Books 
order by Price desc

--7, show all the customer who ordered more than 1 quantity

select * from Orders
where Quantity>2

--8,retrive all order where the total amount exceeds 20;
create view total_amount_exceed as
select *from Orders
where Total_Amount>20


--9, list all the genre availble in the books table
create view genre_availble_in_the_books_table as
select distinct Genre
from Books

--10, find the book with lowest stock
create view book_with_lowest_stock as
select top 1 *from Books
order by Stock asc

--11, calculate the total revenue genrated from all orders,
create view total_revenue_genrated_from_all_orders as
select sum(Total_Amount) as 'total revenue'
from Orders


-----Advance Questions

--1, retrive the total number of books sold for each genre;


select * from Orders

select b.Genre , sum(o.Quantity)
from Orders o
join Books b
on o.Book_ID = b.Book_ID
group by b.Genre


--2, find the average price of books in the  'fantasy' genre ,

select *from Books
select avg(Price) as 'avreage price'
from Books
where Genre ='Fantasy'

--3, list customer who have placed at least 2 orders;
select o.Customer_ID,c.Name,count(Order_ID) as 'order count'
from Orders o
join Customers c
on o.Customer_ID = c.Customer_ID
group by o.Customer_ID ,c.Name
having count(Order_Date)>=2

--4, find the most frequently ordered book;

select *from Orders
select *from Books

select top 1 o.Book_id,b.Title, count(Order_ID)
from Orders o
join Books b
on o.Book_ID=b.Book_ID
group by o.Book_ID, b.Title
order by count(Order_ID) desc

--5, show the top 3 most expensive book of fantasy genre;

select top 3 *from Books
where Genre = 'Fantasy'
order by Price desc

--6, retrive the  total number of books sold by each author;

select *from Orders
select *from Books

select b.Author,sum(o.Quantity)
from Orders o
join Books b
on o.Book_ID = b.Book_ID
group by b.Author

--7, list the city where customer who spent over $30 are located;
 select  c.City,o.Total_Amount
 from Orders o
 join Customers c
 on o.Customer_ID= c.Customer_ID
 where o.Total_Amount >30

 select *from Orders
 select *from Customers

 --8, find the customer who spent most on orders,
 select top 1 c.Customer_ID, c.Name, sum(o.Total_Amount)
 from Orders o
 join Customers c
 on o.Customer_ID= c.Customer_ID
 group by c.Customer_ID,c.Name
 order by sum(o.Total_Amount) desc

 
 
--1, Retrive all books in the 'fiction' genre
select *from all_books_in_the_fiction

--2, find books published after the year 1950
select *from books_publisher_after_1950

--3, List all customer from canada
select *from customer_from_canada

--4, Show orders placed in november 2023
select *from order_placed_in_novemeber

--5, Retrive the total stock of book availble
select *from total_stock_of_book_availble

--6, Find the details of the most expensive book;
select *from most_expensive_book

--7, show all the customer who ordered more than 1 quantity

select *from customer_order_more










