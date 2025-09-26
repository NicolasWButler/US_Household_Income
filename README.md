# US Household Income Project  

## 📊 Project Overview  
This project analyzes U.S. household income data through two key stages: **data cleaning** and **exploratory data analysis (EDA)**.  
The goal was to ensure the dataset was consistent, accurate, and standardized before performing meaningful insights and comparisons across states, counties, and community types.  

The work was completed using **MySQL**.  

---

## 🔧 Tasks Completed  

### 🧹 Data Cleaning (`Us_Household_Data_Cleaning.sql`)  
- Removed duplicate records using both aggregate queries and window functions  
- Standardized inconsistent values in `state_name`, `place`, and `type` columns  
- Populated missing entries in the `place` column using contextual information  
- Corrected typographical errors (e.g., “georia” → “Georgia”)  
- Checked for missing/null values in `ALand` and `AWater` fields  

### 📈 Exploratory Analysis (`US_Household_Income_Exploratory_Data_Analysis.sql`)  
- Identified the **top 10 largest states by land and water area**  
- Calculated the **top 10 states by mean and median household income**  
- Compared **household income across different community types** (e.g., cities vs. boroughs)  
- Ranked **top cities** in the U.S. by both mean and median household income  
- Explored state-level patterns by joining income and income statistics datasets  

---

## 🚀 Key Insights  
- Significant variation exists across states, with some states consistently ranking at the top by both mean and median income  
- Land/water distribution highlighted geographic outliers (e.g., states with very large water areas)  
- Community type analysis showed that income levels differ across urban vs. rural communities  
- Top cities by mean and median income reveal geographic inequality within states  

---

## 📂 Repository Contents  
- `Us_Household_Data_Cleaning.sql` → Queries for cleaning and standardizing the dataset  
- `US_Household_Income_Exploratory_Data_Analysis.sql` → Queries for analyzing income patterns  

---

## 🛠️ Tools Used  
- **MySQL** (data cleaning, joins, exploratory queries)  

---

## 📌 How to Use  
1. Clone the repository or download the SQL files  
2. Run the cleaning script first (`Us_Household_Data_Cleaning.sql`) on the database  
3. Then execute the EDA script (`US_Household_Income_Exploratory_Data_Analysis.sql`) to generate insights  
