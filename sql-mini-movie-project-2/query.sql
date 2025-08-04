SELECT name, rating, star, score, genre

FROM movies m 

WHERE score = (
  SELECT MAX(score)
  From movies
  WHERE genre = m.genre
  )

GROUP BY genre

LIMIT 10;
