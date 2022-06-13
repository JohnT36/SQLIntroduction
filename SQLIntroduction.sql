-- find all products 
 Select * from products;
-- find all products that cost $1400
Select * from products 
where price = 1400;
-- find all products that cost $11.99 or $13.99
 Select * from products
 where price = 11.99 or price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
 Select * from products 
 where NOT price = 11.99; 
-- find  all products and sort them by price from greatest to least
 Select * from products
 Order by price DESC;
-- find all employees who don't have a middle initial
 Select * from employees
 where middleinitial is null;  
-- find distinct product prices
 select Distinct(price) from products; 
-- find all employees whose first name starts with the letter ‘j’
Select * from employees
where firstname Like 'j%'; 
-- find all Macbooks 
 select * from products
 where name like '%macbook%';
-- find all products that are on sale
 select * from products 
 where onsale like '1';
-- find the average price of all products 
 select AVG(price) from products;
-- find all Geek Squad employees who don't have a middle initial 
 select * from employees
 where Title Like '%Geek Squad%' and MiddleInitial is null;
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
select * from products
where StockLevel between 500 and 1200
Order By(price) ASC;
