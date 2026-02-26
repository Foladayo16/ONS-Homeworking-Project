# ONS-Homeworking-Project
The project seeks to identify whether increased levels of homeworking are associated with higher household water demand, and how these patterns vary across regions and water company service areas.  
The analysis investigates behavioural and structural drivers of water use and evaluate the strength of the relationship between working from home and household consumption.
The project includes data modelling, SQL transformations, exploratory analysis, and a multi‑page interactive dashboard built in Looker Studio.

Goal
The goal is to provide evidence‑based insights for water utilities, regulators, and environmental researchers.

🎯 Research Questions How did household water consumption change before, during, and after the shift to remote work? Which areas experienced the largest changes? How did demographic and socioeconomic factors influence consumption patterns? 

🗂️ Data Sources Water Consumption & Supply Wessex Water domestic consumption datasets (2022-2024) United utilities domestic consumption datasets (2023) Yorkshire water domestic consumption (2022-2024) ONS Labour Force Survey (home‑working rates) 2017-2025

🧱 Methodology
1.	Data Acquisition
Multiple datasets were sourced from authoritative providers:
•	Water consumption data (2022–2024) from UK water companies, containing domestic consumption at the LSOA level.
•	Homeworking statistics from the Office for National Statistics (ONS), providing monthly and annual homeworking percentages by region.
•	Geospatial lookup tables from ONS, specifically the LSOA (2021) to Region (2022) Best Fit Lookup, used to map LSOA codes to regions.
All datasets were imported into Google BigQuery for scalable storage and processing.

2. Data Cleaning and Standardisation
Each dataset required cleaning to ensure consistency and analytical readiness:
•	Water data was checked for missing LSOA codes, inconsistent formatting, and outliers in consumption values.
•	Homeworking data was reshaped (unpivoted) and standardised to produce a clean structure with fields for region, year, month, and homeworking percentage.
•	Geospatial lookup was filtered to retain only the required fields:
LSOA21CD, LSOA21NM, RGN22CD, RGN22NM.
•	All datasets were encoded in UTF 8 to avoid header recognition issues during BigQuery ingestion.

🧱 Data Transformation and Dimensional Modelling
A star schema was designed to support efficient analytical queries. The following dimension tables were created:
•	dim_location (LSOA21 → Region22 mapping)
•	dim_homeworking (annual average homeworking rate per region)
•	dim_date 
•	dim_water_company
The fact_water_consumption table was then constructed by joining:
•	water consumption data
•	location dimension (via LSOA21CD)
•	homeworking dimension (via region_code + year)
•	date dimension


📁 Dashboard
Interactive Dashboard: https://lookerstudio.google.com/reporting/750a3286-66e5-46b5-8f6d-1bef2ed3a84d

The dashboard contains six pages:
- Project Overview
- Homeworking Patterns Across the Region
- Domestic Water Consumption Across the Region
- Drivers of Consumption
- Relationship Between Homeworking and Consumption
- Summary & Recommendations

Repository Structure 
├── README.md 
├── data_modelling/ 
├── sql_scripts/ 
│ ├── transformations/ 
│ ├── analysis/ 
├── notebooks/ 
├── dashboard/ 
└── .gitignore

📈 Key Findings
- Domestic water consumption varies significantly across regions, driven mainly by differences in service‑area size and local characteristics.
- Yorkshire Water shows much higher consumption because it covers a larger number of LSOAs in the dataset.
- Wessex Water appears lower due to its smaller geographic footprint, not because households use less water.
- The relationship between homeworking and domestic water consumption in 2024 is weak and slightly negative.
- Structural and regional factors (property type, occupancy, supply boundaries) have a stronger influence on consumption than behavioural changes like homeworking

📝 Summary & Recommendations
Summary
Homeworking does not appear to be a major driver of domestic water consumption. While consumption varies widely across regions, these differences are better explained by structural and geographic factors rather than behavioural changes associated with working from home.

Recommendations
- Investigate property type, occupancy density, and household characteristics.
- Analyse water company service boundaries to understand coverage effects.
- Monitor homeworking trends over time but treat them as secondary drivers.
- Expand the dataset to include multiple years for trend analysis.
- Collect more granular (household‑level) data to strengthen behavioural insights.

Limitations
- Uneven water company coverage
- Aggregated consumption data
- Only one year used for relationship analysis
- Limited demographic variables

🚀 How to Reproduce
- Clone the repository
- Review the data modelling documentation
- Run SQL transformations in /sql_scripts/transformations/
- Connect the transformed tables to Looker Studio
- Rebuild the dashboard using the /dashboard/ folder as reference

📬 Contact
If you’d like to discuss the project or explore the dashboard further, feel free to reach out.
## Dashboard preview
![dashboard page 5](Pictures/page 5.PNG)
