WITH src_data AS (
    SELECT
        *
    FROM
        {{ ref('src_data') }}
)
SELECT
    raw_id,
    empid,
    name,
    gender,
    age
FROM
    src_data