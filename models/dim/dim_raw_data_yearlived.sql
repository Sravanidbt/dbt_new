WITH src_citieslived AS (
    SELECT
        *
    FROM
        {{ ref('src_citieslived') }}
)
SELECT
    raw_id,
    empid,
    yearsLived
FROM
    src_citieslived