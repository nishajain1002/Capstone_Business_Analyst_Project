create database capstone;
use capstone;

#2. Show all data
SELECT * FROM capstone.`cleaned data`;


#3 Retrieve all distinct countries from the dataset.
select distinct country
from capstone.`cleaned data`;


#4.Find the total number of units sold across all products.
select sum(`units sold`) as 'Total_Units_Sold'
from capstone.`cleaned data`;

#5.List all unique products available in the dataset.
select distinct product
from capstone.`cleaned data`;

#6.Show the top 10 rows ordered by highest sales.
select * FROM capstone.`cleaned data`
order by sales desc
limit 10;
#7.Calculate total sales per country.
select country, 
       ROUND(sum(sales), 0) as 'Total Sales'
from capstone.`cleaned data`
group by country
order by 'Total Sales' desc;





#8.Find the average units sold per segment.
select segment, round(avg(`Units Sold`),0) as Avg_Units_Sold
from capstone.`cleaned data`
group by segment
order by Avg_Units_Sold;


#9.Get the sum of gross sales for each product.
select product,sum(`Gross Sales`) as Total_Gross_Sales
from capstone.`cleaned data`
group by product;

#10.Show the maximum and minimum sale price of each product.
select product, max(`Sale Price`)as max_price, min(`Sale Price`) as min_price
from capstone. `cleaned data` 
group by product;

#11.Count how many transactions (rows) each segment has.
select segment, count(sales) as Total_Transaction
from capstone. `cleaned data`
group by segment;


#12.Find all records where sales are greater than 50,000.
select * from capstone. `cleaned data`
where sales > 50000;

#13.Retrieve sales records only for Germany and France.
SELECT Country, SUM(Sales) AS Total_Sales
FROM capstone. `cleaned data`
WHERE Country IN ('Germany', 'France')
GROUP BY Country;

#14 Show details of transactions where discount is not zero.
select * from capstone. `cleaned data`
where discounts>0;

#15. List all products sold in the "Government" segment.
select product
from capstone.`cleaned data`
where segment= 'Government';

#16.Find sales where COGS > 20,000.
select * from capstone. `cleaned data`
where COGS>20000;

#17.Find the country with the total profit.
select country, round(sum(profit),0)as Total_Profit
from capstone. `cleaned data`
group by country
order by Total_Profit desc;

#18.Find the product with the highest total profit.
select product, sum(profit) as max_profit
from capstone.`cleaned data`
group by product
order by max_profit desc
limit 1;

#19.Show average sales per product in each segment.
select segment, product , avg(sales) as avg_sales
from capstone. `cleaned data`
group by segment,  product;

#20.Rank countries by their total gross sales (use RANK() or DENSE_RANK()).
select country, SUM(`Gross Sales`) AS Total_Gross_Sales,
RANK() OVER (ORDER BY SUM(`Gross Sales`)DESC) AS Sales_Rank
from capstone. `cleaned data`
GROUP BY Country
ORDER BY Sales_Rank;

#21.Find the top 3 countries with the highest units sold.
select country, sum(`Units Sold`) as Total_units_sold
from capstone. `cleaned data`
group by country
order by Total_units_sold desc
limit 3;















