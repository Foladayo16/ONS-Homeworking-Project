SELECT
  string_field_0 AS lsoa_code,
  string_field_1 AS lsoa_name,
  string_field_2 AS region_code,
  string_field_3 AS region_name
FROM loation_data`
ORDER BY region_name, lsoa_name;