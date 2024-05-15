WITH raw_data3 AS (
   SELECT
        *
    FROM
       AIRBNB.RAW.RAW_DATA3
)
SELECT
    raw_id,
    data_content:empid::string as empid,
	data_content:personal:kind::string as kind,
    data_content:personal:fullName::string as fullName,
    data_content:personal:age::number as age,
	data_content:personal:gender::string as gender,
    data_content:personal:phoneNumber:areaCode::number as areaCode,
    data_content:personal:phoneNumber:number::number as phoneNumber,
    data_content:personal:children:name::string as child_name,
    data_content:personal:children:gender::string as child_gender,
	data_content:personal:children:age::number as child_age,
    data_content:citiesLived:place::string as place,
    data_content:citiesLived:yearsLived::number as yearsLived,
    current_timestamp as UPDATED_DATE
FROM
    raw_data3
