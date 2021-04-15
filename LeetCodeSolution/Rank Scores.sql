/*
	Rank Scores
	https://leetcode.com/problems/rank-scores/
*/

SELECT sc.SCORE, DENSE_RANK() OVER (ORDER BY sc.SCORE DESC ) Rank
FROM SCORES sc