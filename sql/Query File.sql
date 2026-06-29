-- select  Sales_Region,
-- sum(Quantity_Sold) As total_quantity_sold
-- From retail_sales
-- group by Sales_Region
-- order by total_quantity_sold desc

-- select Sales_Region,
-- concat('$',Format(sum(Revenue),2)) As Total_Revenue,
-- sum(Quantity_Sold) As Total_Quantity_Sold
-- From retail_sales
-- group by Sales_Region
-- order by sum(REVENUE) desc
-- select str_to_date(Sales_Date,'%Y-%m-%d')as Sales_Date_Formated
-- From retail_sales;

-- select
-- date_format(str_to_date(Sales_Date,'%Y-%m-%d'),'%Y-%m') as Sales_Months,
--  concat('$',Format(sum(Revenue),2)) As Total_Revenue
--  From retail_sales
--  group by	Sales_Months
--  order by Sales_Months;


select 
Customer_ID,
concat('$',Format(sum(Revenue),2)) As Total_Purchase,
group_concat(distinct Product order by Product separator',')AS PRODUCT_BOUGHT
from retail_sales
group by Customer_ID
order by sum(Revenue) desc
