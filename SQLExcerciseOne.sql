-- SQL Introduction Exercise
-- Using the bestbuy database:
 -- Copy the following and paste into MySql Workbench

-- find all products 
 SELECT * FROM bestbuy.products;
 
-- find all products that cost $1400
SELECT * FROM bestbuy.products
WHERE Price = 1400.00;
 
-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products as p
WHERE p.Price = 11.99 OR p.Price = 13.99;
-- WHERE Price = 11.99 OR Price = 13.99; This is how I did it originally

-- find all products that do NOT cost 11.99 - using NOT
 SELECT * FROM bestbuy.products as p
 WHERE NOT p.price = 11.99;
 -- WHERE Price != 11.99;
 
-- find  all products and sort them by price from greatest to least
 SELECT * FROM bestbuy.products as p
 ORDER BY p.Price DESC;
 -- ORDER BY Price DESC;
 
-- find all employees who don't have a middle initial
 SELECT * FROM bestbuy.employees
 WHERE MiddleInitial IS null;
 
-- find distinct product prices
SELECT DISTINCT bestbuy.products.price
FROM bestbuy.products;
-- SELECT DISTINCT Price 
-- FROM bestbuy.products;
 
-- find all employees whose first name starts with the letter ‘j’
 SELECT * FROM bestbuy.employees
 WHERE FirstName LIKE 'j%';
 
-- find all Macbooks 
 SELECT * FROM bestbuy.products
 WHERE Name = 'Macbook';
 
-- find all products that are on sale
 SELECT * FROM bestbuy.products
 WHERE Onsale = 1;
 
-- find the average price of all products 
 SELECT AVG(Price) FROM bestbuy.products;
 
-- find all Geek Squad employees who don't have a middle initial 
 SELECT * FROM bestbuy.employees AS e
 WHERE e.MiddleInitial IS null AND e.title = 'Geek Squad';
 -- SELECT * FROM bestbuy.employees
 -- WHERE MiddleInitial IS null AND title = 'Geek Squad';
 
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
SELECT * FROM bestbuy.products
WHERE Price BETWEEN 500 and 1200
ORDER BY Price;
-- Answer said "WHERE Price BETWEEN (500 and 1200)". Why is it in () and it also was not working. 