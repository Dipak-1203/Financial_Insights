-- Key SQL Questions for Financial Analysis
-- 
-- Find the top 5 countries by GDP_Growth_Rate_Percent.
-- Which countries have inflation rates greater than 10%?
-- Which countries have a AAA credit rating?
-- Find the average Inflation_Rate_Percent by Credit_Rating.
-- Get the country with the highest Market_Cap_Trillion_USD.
-- Show the average Bond_Yield_10Y_Percent grouped by Banking_Sector_Health.
-- Find the top 3 countries with the lowest Unemployment_Rate_Percent.
-- Get the average Import_Growth_Percent and Export_Growth_Percent by country
-- Show all countries where Interest_Rate_Percent > Inflation_Rate_Percent.
-- Rank countries by Political_Risk_Score in descending order.
-- Which countries have both high GDP growth (>5%) and low unemployment (<3%)?
-- What is the sum of FDI inflow for the top 5 GDP growth countries?

select * from finance
-- solve all problems  
--1	What are the top 5 countries by GDP growth rate?

select Country, GDP_Growth_Rate_Percent 
from finance
order by GDP_Growth_Rate_Percent desc 
limit 5
;

-- 2)Which countries have inflation rates greater than 10%?

select Country , Inflation_Rate_Percent
from finance
where Inflation_Rate_Percent > 10;

---- 3)Which countries have a AAA credit rating?

select Country , Credit_Rating 
from finance
where Credit_Rating = 'AAA';

-- 4)Find the average Inflation_Rate_Percent by Credit_Rating.

select avg(Inflation_Rate_Percent) as average_infilation_rate ,Credit_Rating
from finance Country
group by Credit_Rating
order by  average_infilation_rate asc
;

--5) Get the country with the highest Market_Cap_Trillion_USD

select   Country, max(Market_Cap_Trillion_USD) as maximum_cap_usd 
from finance
group by Country
order by  Market_Cap_Trillion_USD  desc 
limit 1 ;

--6) Show the average Bond_Yield_10Y_Percent grouped by Banking_Sector_Health.

select Banking_Sector_Health ,
       avg(Bond_Yield_10Y_Percent) as bond_percent 
from finance 
group by Banking_Sector_Health
;

--7)Find the top 3 countries with the lowest Unemployment_Rate_Percent.

select Country , Unemployment_Rate_Percent
from finance
order by Unemployment_Rate_Percent asc
limit 3


-- 8)Get the average Import_Growth_Percent and Export_Growth_Percent by country

select Country , 
        avg(Import_Growth_Percent) as import_rate ,
		avg(Export_Growth_Percent) as export_rate
from finance
group by Country 
order by Country;


-- 9) Show all countries where Interest_Rate_Percent > Inflation_Rate_Percent.

select Country
from finance 
where Interest_Rate_Percent > Inflation_Rate_Percent
order by Country

-- !0) Rank countries by Political_Risk_Score in descending order.

select Country, Political_Risk_Score
from finance
order by Political_Risk_Score desc

-- 11)Which countries have both high GDP growth (>5%) and low unemployment (<3%)?

select Country ,
      GDP_Growth_Rate_Percent,
	  Unemployment_Rate_Percent
from finance
where GDP_Growth_Rate_Percent > 5
and Unemployment_Rate_Percent < 3

--12)What is the sum of FDI inflow for the top 5 GDP growth countries?

 select sum(FDI_Inflow_Billion_USD) as FDI_inflow
		from 
			(select Country ,
			      GDP_Growth_Rate_Percent ,
				  FDI_Inflow_Billion_USD 
			from finance
			order by GDP_Growth_Rate_Percent desc
			limit 5
		) as top_5


