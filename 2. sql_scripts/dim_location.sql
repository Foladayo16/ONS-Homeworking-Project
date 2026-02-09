WITH base AS (
  SELECT DISTINCT
    LSOA_CODE,
    DATA_SOURCE
  FROM water_data
)

SELECT
  LSOA_CODE AS lsoa_code,
  CASE
    WHEN DATA_SOURCE = 'Wessex' THEN 'South West'
    WHEN DATA_SOURCE = 'United Utilities' THEN 'North West'
    WHEN DATA_SOURCE = 'Yorkshire' THEN 'Yorkshire and Humber'
  END AS region_name
FROM base;