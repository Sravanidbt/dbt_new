WITH raw_data AS (
   SELECT
        *
    FROM
       AIRBNB.RAW.raw_data2
)
select
 raw_id,
 f.value:empid::string as empid,
 c.value:name::string as name,
 c.value:age::number as age,
 c.value:gender::string as gender
 from raw_data as raw,
 lateral flatten(input => raw.data_content:root) f,
lateral flatten(input => f.value:children, outer=>true) c