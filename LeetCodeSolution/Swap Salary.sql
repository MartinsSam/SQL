/*
Swap Salary
https://leetcode.com/problems/swap-salary/
*/
UPDATE SALARY
SET SEX = (CASE WHEN sex = 'm' THEN 'f' ELSE 'm' END);