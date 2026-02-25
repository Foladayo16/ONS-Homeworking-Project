
  SELECT
    region_name,
    region_code,
    year,
   AVG(`homeworking-percentage`) AS avg_homeworking_rate
   FROM ons_homeworking_raw
   GROUP BY region_code, region_name, year
ORDER BY region_name, year;
