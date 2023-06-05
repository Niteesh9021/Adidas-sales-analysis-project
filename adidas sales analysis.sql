# 1.Which city has the highest total sales?

SELECT 
    city, SUM(total_sales) AS total_sales
FROM
    sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 1; 

# 2.Which product has the highest price per unit?

SELECT 
    product, Price_per_unit
FROM
    sales
ORDER BY Price_per_Unit DESC
LIMIT 1;

# 3.What is the average operating margin for each sales method?

SELECT 
    sales_method, AVG(operating_margin)
FROM
    sales
GROUP BY sales_method;

# 4.How many units of each product were sold in each region?
SELECT 
    region, product, SUM(units_sold)
FROM
    sales
GROUP BY region , product;

# 5.What is the total operating profit for each city?

SELECT 
    city, SUM(operating_profit) AS total_operating_profit
FROM
    sales group by city;
    
# 6.What is the average total sales per retailer in each state?

SELECT 
    State, retailer, AVG(Total_sales) AS total_sales
FROM
    sales
GROUP BY retailer , State;

# 7.Which retailer had the highest operating profit and what was the corresponding operating margin?

SELECT 
    retailer, operating_profit, operating_margin
FROM
    sales
ORDER BY Operating_Profit DESC
LIMIT 1;

# 8.How many retailers had a negative operating profit in each region?

SELECT 
    region, COUNT(retailer) AS retailers
FROM
    sales
WHERE
    Operating_Profit < 0
GROUP BY region;

# 9.Which region had the highest total sales, and what was the corresponding total operating profit?

SELECT 
    region,
    SUM(total_sales) AS total_sales,
    SUM(operating_profit) AS operating_profit
FROM
    sales
GROUP BY Region
ORDER BY Total_Sales DESC
LIMIT 1;

# 10.What is the average number of units sold per retailer in each city?

SELECT 
    city, retailer, AVG(units_sold) AS avg_sales
FROM
    sales
GROUP BY city , retailer;

# 11.What is the total sales and operating profit for each retailer in each state?

SELECT 
    state,
    retailer,
    SUM(Total_sales) AS total_sales,
    SUM(operating_profit) AS Operating_profit
FROM
    sales
GROUP BY state , retailer;

# 12.Which product had the highest total sales and what was the corresponding operating margin?

SELECT 
    product,
    SUM(total_sales) AS total_sales,
    SUM(operating_margin) AS operating_margin
FROM
    sales
GROUP BY product
ORDER BY total_sales DESC
LIMIT 1;

# 13.Which retailer had the highest total sales and what was the corresponding sales method?
SELECT 
    retailer, SUM(total_sales) AS total_sales, sales_method
FROM
    sales
GROUP BY sales_method , retailer
ORDER BY total_sales DESC
LIMIT 1;

# 14.How many units were sold for each product category in each city?

SELECT 
    product, city, SUM(units_sold) AS unit_sold
FROM
    sales
GROUP BY product , city;

# 15.What is the average operating margin for each product in each state?

SELECT 
    state,
    product,
    AVG(operating_margin) AS average_operating_margin
FROM
    sales
GROUP BY product , state;

# 16.Which sales method generated the highest total sales and what was the corresponding operating margin?

SELECT 
    sales_method,
    SUM(total_sales) AS total_sales,
    SUM(operating_margin) AS operating_margin
FROM
    sales
GROUP BY Sales_Method
ORDER BY total_sales DESC
LIMIT 1;

# 17.What is the average number of units sold per retailer in each region?

SELECT 
    region, retailer, AVG(units_sold) AS average_units_sold
FROM
    sales
GROUP BY region , retailer;

# 18.How many retailers had a total sales above 20,000 ?

SELECT 
    retailer, SUM(total_sales) AS retailer_sales
FROM
    sales
GROUP BY retailer
HAVING retailer_sales > 15000
ORDER BY retailer_sales DESC;

# 19. How many units were sold under outlet sales method?

SELECT 
    sales_method, SUM(units_sold) AS total_units
FROM
    sales
GROUP BY sales_method
HAVING sales_method LIKE 'outlet';

# 20.what are the products which has operating margin greater than 50% ?

SELECT 
    product, Operating_Margin AS margin
FROM
    sales
HAVING margin > 0.5
ORDER BY margin DESC;