/*
Write a SQL query for a report that provides the following information for each person in the Person table, 
regardless if there is an address for each of those people:
175. Combine Two Tables
https://leetcode.com/problems/combine-two-tables/
*/

SELECT p.FIRSTNAME, p.LASTNAME, a.CITY, a.STATE
FROM PERSON p LEFT JOIN ADDRESS a
ON p.PERSONID = a.PERSONID