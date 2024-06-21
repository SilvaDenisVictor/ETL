{% macro columns_film(table_name) %}
    {{table_name}}.film_id,
    {{table_name}}.title,
    {{table_name}}.release_date,
    {{table_name}}.price,
    {{table_name}}.rating,
    {{table_name}}.user_rating,
    {{table_name}}.rating_category
{% endmacro %}