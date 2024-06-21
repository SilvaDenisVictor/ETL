SELECT 
    {{ columns_film('fc') }},
    fc.qtde_category,
    fa.qtde_actor
FROM {{ ref('films_category') }} fc
JOIN {{ ref('films_actors') }} fa on fc.film_id = fa.film_id
ORDER BY fc.film_id