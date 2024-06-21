SELECT 
    {{ columns_film('f') }},
    COUNT(fc.category_name) as qtde_category
FROM {{ ref('films_stg') }} f
JOIN {{ source('mask', 'film_category') }} fc on f.film_id = fc.film_id
GROUP BY
    {{ columns_film('f') }}
ORDER BY qtde_category