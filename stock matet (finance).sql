CREATE TABLE finance

                (
				Country	VARCHAR(20)PRIMARY KEY ,
				Date DATE,
				Stock_Index	VARCHAR(20),
				Index_Value	FLOAT,
				Daily_Change_Percent FLOAT,	
				Market_Cap_Trillion_USD	FLOAT,
				GDP_Growth_Rate_Percent	FLOAT,
				Inflation_Rate_Percent	FLOAT,
				Interest_Rate_Percent FLOAT,
				Unemployment_Rate_Percent FLOAT,	
				Currency_Code VARCHAR(20),
				Exchange_Rate_USD FLOAT,
				Currency_Change_YTD_Percent	FLOAT,
				Government_Debt_GDP_Percent FLOAT,	
				Current_Account_Balance_Billion_USD	FLOAT,
				FDI_Inflow_Billion_USD	FLOAT,
				Commodity_Index FLOAT,
				Oil_Price_USD_Barrel FLOAT,	
				Gold_Price_USD_Ounce FLOAT,	
				Bond_Yield_10Y_Percent FLOAT,
				Credit_Rating VARCHAR(20),	
				Political_Risk_Score FLOAT,	
				Banking_Sector_Health VARCHAR(20),	
				Real_Estate_Index FLOAT,	
				Export_Growth_Percent FLOAT,	
				Import_Growth_Percent FLOAT
				);


SELECT * FROM finance



