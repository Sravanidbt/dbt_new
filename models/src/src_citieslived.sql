WITH raw_data AS (
   SELECT
        *
    FROM
       AIRBNB.RAW.raw_data2
)
select
 raw_id,
 f.value:empid::string as empid,
 city.value:place::string as place,
 years.value::number as yearsLived
 from raw_data as raw,
 lateral flatten(input => raw.data_content:root) f,
 lateral flatten(input => f.value:citiesLived, outer=>true) city,
 lateral flatten(input => city.value:yearsLived, outer=>true) years