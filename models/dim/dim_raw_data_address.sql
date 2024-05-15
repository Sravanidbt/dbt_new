WITH src_data AS (
    SELECT
        *
    FROM
        {{ ref('src_data') }}
)
SELECT 
    raw_id,
    streetaddress,
    city,
    state,
    postalcode
FROM
    src_data