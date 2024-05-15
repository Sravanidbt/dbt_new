WITH src_data AS (
    SELECT
        *
    FROM
        {{ ref('src_data') }}
)
SELECT
    raw_id,
    Designation,
    Department
FROM
    src_data