SELECT
  year AS year,
  CONCAT(year, '') AS year_label,
  CASE WHEN year < 2020 THEN 'Yes' ELSE 'No' END AS pre_covid_flag,
  CASE WHEN year >= 2020 THEN 'Yes' ELSE 'No' END AS post_covid_flag
FROM UNNEST([2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025]) AS year;