/* Employees Earning More Than Their Managers 
https://leetcode.com/problems/employees-earning-more-than-their-managers/
*/
CREATE TABLE EMPLOYEE (
    ID INT,
    NAME VARCHAR(30), 
    SALARY INT,
    MANAGERID INT);
    
INSERT INTO EMPLOYEE (ID, NAME, SALARY, MANAGERID) VALUES (1,'Joe',70000,3);
INSERT INTO EMPLOYEE (ID, NAME, SALARY, MANAGERID) VALUES (2,'Henry',80000,4);
INSERT INTO EMPLOYEE (ID, NAME, SALARY, MANAGERID) VALUES (3,'Sam',60000,null);
INSERT INTO EMPLOYEE (ID, NAME, SALARY, MANAGERID) VALUES (4,'Max',90000,null);

SELECT * FROM EMPLOYEE;

/*Runtime: 544 ms, faster than 12.80% of MySQL online submissions for Employees Earning More Than Their Managers.*/
SELECT employee.NAME AS EMPLOYEE
FROM EMPLOYEE manager
INNER JOIN  EMPLOYEE employee 
ON employee.MANAGERID = manager.ID
WHERE employee.SALARY > manager.SALARY

/*Runtime: 313 ms, faster than 69.74% of MySQL online submissions for Employees Earning More Than Their Managers.*/
SELECT employee.NAME AS EMPLOYEE
FROM EMPLOYEE manager,  EMPLOYEE employee 
WHERE employee.MANAGERID = manager.ID AND employee.SALARY > manager.SALARY