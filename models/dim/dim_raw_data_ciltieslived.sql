WITH src_citieslived AS (
    SELECT
        *
    FROM
        {{ ref('src_citieslived') }}
)
SELECT
    raw_id,
    empid,
    place
FROM
    src_citieslived