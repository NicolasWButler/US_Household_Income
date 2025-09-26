# US_Household_Income & US_household_income_statistics Data Cleaning
SELECT *
FROM US_Household_Project.us_household_income;

SELECT * 
FROM US_Household_Project.us_household_income_statistics;

SELECT COUNT(id)
FROM US_Household_Project.us_household_income;

SELECT COUNT(id)
FROM US_Household_Project.us_household_income_statistics;

# Identifying duplicate values in the US_Household_income table
SELECT id, COUNT(id)
FROM US_Household_Project.us_household_income
GROUP BY id
HAVING COUNT(id) > 1;

# Identifying duplicate values in the US_Household_income table using Window Functions
SELECT *
FROM (
	SELECT row_id,
		id,
ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) AS row_num
FROM US_Household_Project.us_household_income
) duplicates
WHERE row_num > 1;

# Deleting said duplicates from the US_Household_income table
DELETE FROM US_Household_Project.us_household_income
WHERE row_id IN (
	SELECT row_id
	FROM (
	SELECT row_id,
		id,
	ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) AS row_num
	FROM US_Household_Project.us_household_income
		) duplicates
WHERE row_num > 1);

# Identifying duplicate values in the US_Household_income_statistics table - in this case it was none
SELECT id, COUNT(id)
FROM US_Household_Project.us_household_income_statistics
GROUP BY id
HAVING COUNT(id) > 1;


#Standardising the 'State_Name' column
SELECT State_name, COUNT(state_name)
FROM US_Household_Project.us_household_income
GROUP BY state_name; 

UPDATE US_Household_Project.us_household_income
SET state_name = 'Georgia'
WHERE state_name = 'georia';

UPDATE US_Household_Project.us_household_income
SET state_name = 'Alabama'
WHERE state_name = 'alabama';

#Standardising the 'Place' column & populating misisng data
SELECT *
FROM US_Household_Project.us_household_income
WHERE Place = '';

UPDATE US_Household_Project.us_household_income
SET place = 'Autaugaville'
WHERE county = 'Autauga County'
AND city = 'Vinemont';

#Standardising type and correcting erros
SELECT type, COUNT(type)
FROM US_Household_Project.us_household_income
GROUP BY type; 

UPDATE US_Household_Project.us_household_income
SET type = 'Borough'
WHERE type = 'Boroughs';

# Checking to see if 'ALand' or 'AWater' has null values 
SELECT ALand, AWater
FROM US_Household_Project.us_household_income
WHERE (ALand = '' OR ALand IS NULL)
AND (AWater = '' OR AWater IS NULL)



