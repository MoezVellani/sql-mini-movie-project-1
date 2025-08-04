SELECT rating, COUNT(*)

FROM movies 

GROUP BY rating

order BY COUNT(*) DESC;
