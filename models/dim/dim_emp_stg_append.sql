{{
  config(
    materialized = 'incremental',
    incremental_strategy='append',
    unique_id='empid',
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
    
    