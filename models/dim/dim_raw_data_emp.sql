WITH src_emp2 AS (
    SELECT
        *
    FROM
        {{ ref('src_emp2') }}
)
SELECT
    raw_id,
    empid,
    kind,
    fullName,
    age,
    gender,
    areaCode,
    phoneNumber
FROM
    src_emp2