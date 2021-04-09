/*
Not Boring Movies
https://leetcode.com/problems/not-boring-movies/
*/
SELECT cine.ID, cine.MOVIE, cine.DESCRIPTION, cine.RATING 
FROM CINEMA cine
WHERE cine.DESCRIPTION <> 'boring' AND (cine.ID%2=1)
ORDER BY cine.RATING desc


/*
Runtime: 163 ms, faster than 92.94% of MySQL online submissions for Not Boring Movies.
Memory Usage: 0B, less than 100.00% of MySQL online submissions for Not Boring Movies.
*/
SELECT cine.ID, cine.MOVIE, cine.DESCRIPTION, cine.RATING 
FROM CINEMA cine
WHERE (cine.ID%2=1) AND (cine.DESCRIPTION <> 'boring')
ORDER BY cine.RATING desc