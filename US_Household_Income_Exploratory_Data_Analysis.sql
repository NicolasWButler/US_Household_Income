#US Household Income Exploratory Data Analysis
SELECT *
FROM US_Household_Project.us_household_income;

SELECT * 
FROM US_Household_Project.us_household_income_statistics;

#Identifying the top 10 largest States by 'land'
Select State_name, SUM(ALand), SUM(AWater)
FROM US_Household_Project.us_household_income
GROUP BY state_name
ORDER BY 2 DESC
LIMIT 10;

#Identifying the top 10 largest States by 'water'
Select State_name, SUM(ALand), SUM(AWater)
FROM US_Household_Project.us_household_income
GROUP BY state_name
ORDER BY 3 DESC
LIMIT 10;

SELECT *
FROM US_Household_Project.us_household_income u
INNER JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
WHERE MEAN != 0;


SELECT u.State_name, County, Type, `Primary`, Mean, Median
FROM US_Household_Project.us_household_income u
INNER JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
WHERE MEAN != 0;

# Identifying the top 10 U.S. states with the highest average household incomes.
SELECT u.State_name, 
	ROUND(AVG(Mean),1), 
    ROUND(AVG(Median),1)
FROM US_Household_Project.us_household_income u
INNER JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
WHERE MEAN != 0
GROUP BY u.state_name
ORDER BY 2 DESC
LIMIT 10;


# Identifying the top 10 U.S. states with the highest median household incomes.
SELECT u.State_name, 
	ROUND(AVG(Mean),1), 
    ROUND(AVG(Median),1)
FROM US_Household_Project.us_household_income u
INNER JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
WHERE MEAN != 0
GROUP BY u.state_name
ORDER BY 3 DESC
LIMIT 10;

#Comparing household income across different community types in the U.S.
SELECT type, COUNT(Type),
	ROUND(AVG(Mean),1), 
    ROUND(AVG(Median),1)
FROM US_Household_Project.us_household_income u
INNER JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
WHERE Mean != 0
GROUP BY Type
HAVING COUNT(Type) > 100
ORDER BY 4 DESC
;
 
SELECT *
FROM US_Household_Project.us_household_income
WHERE type = 'Community' 
;

# Top Cities by Mean Household Income
SELECT u.state_name, city, ROUND(AVG(Mean),1)
FROM US_Household_Project.us_household_income u
JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
GROUP BY u.state_name, city
ORDER BY ROUND(AVG(Mean),1) DESC;

#Top Cities by Median Household Income
SELECT u.state_name, city, ROUND(AVG(Median),1)
FROM US_Household_Project.us_household_income u
JOIN US_Household_Project.us_household_income_statistics us
	ON u.id = us.id
GROUP BY u.state_name, city
ORDER BY ROUND(AVG(Median),1) DESC; 