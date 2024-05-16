{% test only_alphabets(model, column_name) %}
SELECT
 *
FROM
 {{ model }}
WHERE
 {{ column_name}} not regexp '^[a-zA-Z\\\\s]+$'
{% endtest %}