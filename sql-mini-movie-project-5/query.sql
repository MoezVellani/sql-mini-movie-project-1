SELECT m.star, m.rating, COUNT(*) as appearances

FROM movies m 

GROUP BY m.star, m.rating

HAVING COUNT(*) = (
  SELECT MAX(star_count)
  From (
    select count(*) as star_count
    from movies
    where rating = m.rating
    group by star
    ) as sub
  )
  
ORDER BY m.rating;
