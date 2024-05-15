{{
  config(
    materialized = 'incremental',
    incremental_strategy='merge',
    unique_id='empid',
    merge_update_columns = ['empid','kind','fullName','age'],
    on_schema_change='fail'
    )
}}
WITH src_stg_raw_table AS (
    SELECT
        *
    FROM
        {{ ref('src_stg_raw_table') }}
)
SELECT *  FROM src_stg_raw_table
{% if is_incremental() %}
  WHERE Updated_Date > (select max(Updated_Date) from {{ this }})
{% endif %}