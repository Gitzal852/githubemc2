SELECT movie_id, COUNT(*) AS rating_count, ROUND(AVG(rating), 2) AS avg_rating
FROM ratings
GROUP BY movie_id
HAVING COUNT(*) > 100
ORDER BY avg_rating DESC
LIMIT 20;