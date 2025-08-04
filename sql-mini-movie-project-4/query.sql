SELECT star, AVG(score)

FROM movies 

GROUP BY star

HAVING AVG(score) > 8

ORDER BY AVG(SCORE) DESC

LIMIT 10;
