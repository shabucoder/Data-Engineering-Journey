create table sales(
id int,
sales_date date,
product varchar,
quantity int,
revenue decimal(10, 2)
);

insert into sales(id, sales_date, product, quantity, revenue)
values (1, '2021-01-01', 'Product A', 10, 100.00);

select * from sales;


INSERT INTO sales (id, sales_date, product, quantity, revenue)
VALUES
  (2,  '2021-01-02', 'Product B', 5,  50.00),
  (3,  '2021-01-03', 'Product C', 15, 150.00),
  (4,  '2021-01-04', 'Product A', 8,  80.00),
  (5,  '2021-01-05', 'Product B', 12, 120.00),
  (6,  '2021-01-06', 'Product C', 20, 200.00),
  (7,  '2021-01-07', 'Product A', 6,  60.00),
  (8,  '2021-01-08', 'Product B', 18, 180.00),
  (9,  '2021-01-09', 'Product C', 10, 100.00),
  (10, '2021-01-10', 'Product A', 4,  40.00);

 select * from sales;      --- To print all the data from the table 

 -- Retrive data only for a specific product, Such as "Product A" We can do it by using the **WHERE**

 select * from sales where product = 'Product A';

 -- Retrive toatl revenue for each day 

 SELECT sales_date, sum(revenue) from sales group by sales_date;

 SELECT product, sum(revenue) from sales group by product;

 -- order the revenue by ASC/DESC for product 

 SELECT product, sum(revenue) from sales group by product order by sum(revenue) DESC;

 

 -- Q1: Select all columns from the sales table
SELECT * FROM sales;

-- Q2: Select only product and revenue columns
SELECT product, revenue FROM sales;

-- Q3: Find all sales where revenue is greater than 100
SELECT * FROM sales WHERE revenue > 100;

-- Q4: Find all sales where product is Product A
SELECT * FROM sales WHERE product = 'Product A';

-- Q5: Find all sales where quantity is between 5 and 15
SELECT * FROM sales WHERE quantity BETWEEN 5 AND 15;

-- Q6: Find the total revenue for each product
SELECT product, SUM(revenue) FROM sales GROUP BY product;

-- Q7: Find the total quantity sold for each product
SELECT product, SUM(quantity) FROM sales GROUP BY product;

-- Q8: Find all sales where revenue > 100 and product is Product B
SELECT * FROM sales WHERE revenue > 100 AND product = 'Product B';

-- Q9: Find the average revenue for each product
SELECT product, AVG(revenue) FROM sales GROUP BY product;

-- Q10: Find all products where total revenue is greater than 200
SELECT product, SUM(revenue) FROM sales GROUP BY product HAVING SUM(revenue) > 200;

-- Q11: Find the product with the highest total revenue
SELECT product, SUM(revenue) FROM sales GROUP BY product ORDER BY SUM(revenue) DESC LIMIT 1;

-- Q12: Find the total revenue per product ordered from highest to lowest
SELECT product, SUM(revenue) FROM sales GROUP BY product ORDER BY SUM(revenue) DESC;

-- Q13: Find all sales where product is Product A or Product C and quantity > 5
SELECT * FROM sales WHERE (product = 'Product A' OR product = 'Product C') AND quantity > 5;

-- Q14: Find the total number of sales for each product where total quantity sold is more than 10
SELECT product, COUNT(*) FROM sales GROUP BY product HAVING SUM(quantity) > 10;

-- Q15: Find the product that has the minimum average revenue
SELECT product, AVG(revenue) FROM sales GROUP BY product ORDER BY AVG(revenue) ASC LIMIT 1;