# US Household Income Project (2023)

📊 **Project Overview**  
This project explores U.S. household income data (2023) using MySQL.  
It includes **data cleaning** steps to prepare the dataset and 
**exploratory analysis** to answer key economic questions about states, 
cities, land/water distribution, and community income levels.  

The project demonstrates SQL skills in:
- Data cleaning and preprocessing  
- Query design for descriptive statistics  
- Exporting and interpreting results  
- Linking insights to socio-economic context  

---

## 🔧 Project Structure
- `Us_Household_Data_Cleaning.sql` → Cleaning script (removing 
duplicates, handling nulls, formatting).  
- `US_Household_Income_Exploratory_Data_Analysis.sql` → Queries for 
answering key questions.  
- `cleaned_household_income_table.csv` → Final cleaned dataset (2023).  
- `results/` (CSV exports) → Query outputs, browsable directly on GitHub:
  - `highest_avg_income_per_state.csv`
  - `highest_median_income_per_state.csv`
  - `top_cities_by_mean.csv`
  - `top_cities_by_median.csv`
  - `largest_states_by_land.csv`
  - `largest_states_by_water.csv`
  - `income_by_community_type.csv`

---

## ❓ Key Questions & Findings

### 1. Which states have the highest household incomes?
- **Highest average income**: District of Columbia, Connecticut, New 
Jersey.  
- **Highest median income**: Massachusetts, New Jersey, Hawaii.  
- Many of these are also **high cost-of-living areas** (Northeast 
corridor, Hawaii, Alaska, Virginia).  
- Interesting note: **Alaska** appears in the top list despite being 
remote — a surprising insight.  

📂 Files:  
- [`highest_avg_income_per_state.csv`](./highest_avg_income_per_state.csv)  
- 
[`highest_median_income_per_state.csv`](./highest_median_income_per_state.csv)  

---

### 2. Which cities have the highest household incomes?
- **Top by average income**: Cities in CT, NJ, and NY suburbs dominate.  
- **Top by median income**: Reinforces strong concentration of wealth in 
the Northeast.  

📂 Files:  
- [`top_cities_by_mean.csv`](./top_cities_by_mean.csv)  
- [`top_cities_by_median.csv`](./top_cities_by_median.csv)  

---

### 3. How does geography (land vs. water area) compare across states?
- **Largest by land area**: Alaska (unsurpassed), Texas, California.  
- **Largest by water area**: Alaska again far ahead, followed by Michigan 
and Florida.  

📂 Files:  
- [`largest_states_by_land.csv`](./largest_states_by_land.csv)  
- [`largest_states_by_water.csv`](./largest_states_by_water.csv)  

---

### 4. How does household income vary across community types?
- Suburban areas generally show higher incomes compared to rural areas.  
- Rural communities have lower median values but also lower variance.  

📂 File:  
- [`income_by_community_type.csv`](./income_by_community_type.csv)  

---

## 🚀 Key Insights
- High-income states align strongly with **high cost-of-living regions** 
(Northeast, Hawaii, Alaska).  
- Cities with the highest incomes cluster around **finance, government, 
and tech hubs**.  
- Geographic size (land/water) shows little direct correlation to income 
but highlights state diversity.  
- Community type is a strong predictor: **suburban > urban > rural** 
income levels.  

---

## 🛠️ Tools Used
- **MySQL Workbench** (cleaning + queries)  
- **CSV exports** (to share results)  
- **GitHub** (version control & project portfolio)  

---

## 📌 How to Use
1. Clone this repo or download files.  
2. Explore `.sql` scripts to see the cleaning and analysis steps.  
3. Open `.csv` files directly on GitHub (clickable) or in Excel/Google 
Sheets.  

---

✍️ *This project was built as part of my data analysis portfolio to 
demonstrate SQL cleaning, querying, and interpretation skills using 2023 
U.S. household income data.*

