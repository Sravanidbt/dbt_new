{% test maximum_characters_3(model, column_name) %}
with validating as (

    select 
        {{ column_name }}
    from {{ model }}
    group by 1
    having max(length({{ column_name }})) > 3 

)

select * from validating

{% endtest %}
