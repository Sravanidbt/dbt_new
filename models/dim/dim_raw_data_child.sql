WITH src_child AS (
    SELECT
        *
    FROM
        {{ ref('src_child') }}
)
SELECT
    raw_id,
    empid,
    name,
    age,
    gender
FROM
    src_child