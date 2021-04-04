/*
	Classes More Than 5 Students
	https://leetcode.com/problems/classes-more-than-5-students/
*/

SELECT c.CLASS AS 'class'
FROM (SELECT DISTINCT STUDENT, CLASS FROM COURSES) c
GROUP BY c.CLASS
HAVING COUNT(c.CLASS) >= 5;