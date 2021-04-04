/*
182. Duplicate Emails
https://leetcode.com/problems/duplicate-emails/
*/
SELECT p.EMAIL AS Email
FROM PERSON p
GROUP BY p.EMAIL 
HAVING COUNT(p.EMAIL) > 1;
