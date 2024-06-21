SELECT
    film_id,
    title,
    release_date,
    price,
    rating,
    user_rating,
    CASE
        WHEN user_rating >= 4.5 THEN 'EXCELLENT'
        WHEN user_rating >= 4.0 THEN 'GOOD'
        WHEN user_rating >= 3.0 THEN 'AVARAGE'
        ELSE 'POOR'
    END AS rating_category
FROM {{ source('mask', 'films') }}