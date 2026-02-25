WITH monthly AS (
  SELECT
    region_name,
    year,
    homeworking_percentage
  FROM ons_homeworking_raw
  WHERE year BETWEEN 2018 AND 2024
),

yearly AS (
  SELECT
    region_name,
    year,
    AVG(homeworking_percentage) AS homeworking_percentage_yearly
  FROM monthly
  GROUP BY region_name, year
)

SELECT
  CONCAT(region_name, '_', year) AS homeworking_id,
  region_name,
  year,
  homeworking_percentage_yearly AS homeworking_percentage
FROM yearly
ORDER BY region_name, year;