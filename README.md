# ONS-Homeworking-Project
This project investigates how the rise of remote and hybrid work patterns reshaped domestic water consumption across three geographical regions in England between 2017 and 2025. 
Using a modern analytics engineering stack (BigQuery, dbt, Fivetran, Looker), the project integrates multi‑source UK datasets to quantify behavioural shift and explore potential public‑health implications.

The goal is to provide evidence‑based insights for water utilities, regulators, and environmental researchers.

🎯 Research Questions How did household water consumption change before, during, and after the shift to remote work? Which areas experienced the largest changes? How did demographic and socioeconomic factors influence consumption patterns? Which behavioural changes persisted beyond 2021?

🗂️ Data Sources Water Consumption & Supply Wessex Water domestic consumption datasets (2022-2024) United utilities domestic consumption datasets (2023) Yorkshire water domestic consumption (2022-2024) ONS Labour Force Survey (home‑working rates) 2017-2025

🧱 Methodology

Data Ingestion Automated ingestion via Fivetran (where connectors exist) Manual ingestion for static datasets (Census, shapefiles) Storage in BigQuery with raw, staging, and analytics layers

Data Modelling (dbt) Source‑aligned staging models Surrogate keys for cross‑dataset joins Time‑series models for 2017–2025 consumption Spatial models linking LSOAs to supply zones Feature engineering for: remote‑work intensity weekday/weekend patterns seasonal adjustments
Analysis Trend analysis across pre‑COVID, COVID, and post‑COVID periods Correlation analysis between remote‑work intensity and consumption

Visualisation Interactive Looker dashboards: Consumption heatmaps Time‑series trends Remote‑work vs consumption scatterplots Water‑quality exceedance trackers 

📁 

Repository Structure 
├── README.md 
├── data_modelling/ 
├── sql_scripts/ 
│ ├── transformations/ 
│ ├── analysis/ 
├── notebooks/ 
├── dashboard/ 
└── .gitignore

Connect Looker to the analytics dataset 
Future Enhancements 
Forecasting domestic water demand under remote‑work scenario Linking consumption to household‑level socioeconomic indicators Evaluating policy implications for water‑efficiency programmes.

Contact For questions or collaboration opportunities, feel free to reach out.