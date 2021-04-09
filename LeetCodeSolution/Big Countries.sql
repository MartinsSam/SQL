/*Big Countries
https://leetcode.com/problems/big-countries/
*/
SELECT w.name name, w.population population, w.area area
FROM World w
WHERE w.area > 3000000 or w.population > 25000000;

