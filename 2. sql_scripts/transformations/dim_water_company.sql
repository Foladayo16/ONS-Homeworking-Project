SELECT
  ROW_NUMBER() OVER (ORDER BY company_name) AS company_id,
  company_name
FROM (
  SELECT DISTINCT DATA_SOURCE AS company_name
  FROM water_data`
)
ORDER BY company_name;
  