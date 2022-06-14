/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.NAME AS ProductName, C.NAME AS CategoryName
FROM products AS p
INNER JOIN categories AS c
ON c.CategoryID = p.CategoryID
WHERE C.NAME = "Computers"; 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p.NAME as ProductName, p.Price as ProductPrice, r.Rating as ProductRating
 FROM products as p
 INNER JOIN reviews as r ON r.ProductID = p.ProductID
 WHERE r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.Quantity) as Total
FROM employees AS e
INNER JOIN sales AS s on e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 2;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Deparment Name', c.Name as 'Category Name' FROM departments as d 
INNER JOIN categories as c on d.DepartmentID = c.DepartmentID
WHERE c.Name = 'Appliances' or c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as "Total Price"
 FROM products as p
 INNER JOIN sales as s on s.ProductID = p.ProductID
 WHERE p.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, p.ProductID, r.reviewer, r.rating, r.Comment
FROM products as p
INNER JOIN reviews as r on r.ProductID = p.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
SELECT e.EmployeeID, e.FirstName, e.LastName, p.Name, Sum(s.Quantity) as TotalSold
FROM sales as s
INNER JOIN employees as e on e.EmployeeID = s.EmployeeID
INNER JOIN products as p on p.ProductID = s.ProductID
GROUP BY e.EmployeeID, p.ProductID
ORDER BY TotalSold DESC;