SELECT 
    {{ columns_film('f') }},
    COUNT(fa.actor_id) as qtde_actor
FROM {{ ref('films_stg') }} f
JOIN {{ source('mask', 'film_actors') }} fa on f.film_id = fa.film_id
GROUP BY
    {{ columns_film('f') }}
ORDER BY qtde_actor