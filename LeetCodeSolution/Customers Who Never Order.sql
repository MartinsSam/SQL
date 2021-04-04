/* 
183. Customers Who Never Order
https://leetcode.com/problems/customers-who-never-order/
*/
SELECT c.NAME AS Customers
FROM CUSTOMERS c
WHERE NOT EXISTS (SELECT null FROM ORDERS o WHERE o.CUSTOMERID = c.ID);