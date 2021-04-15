/*
Rising Temperature
https://leetcode.com/problems/rising-temperature/
*/
CREATE TABLE WEATHER(
	ID INT,
	RECORDDATE DATE,
	TEMPERATURE INT,
);

INSERT INTO WEATHER(ID, RECORDDATE, TEMPERATURE) VALUES (1,'01-01-2015',10);


INSERT INTO WEATHER(ID, RECORDDATE, TEMPERATURE) VALUES (2,'02-01-2015',25);

INSERT INTO WEATHER(ID, RECORDDATE, TEMPERATURE) VALUES (3,'03-01-2015',20);

INSERT INTO WEATHER(ID, RECORDDATE, TEMPERATURE) VALUES (4,'04-01-2015',30);

SELECT result.ID  FROM (
SELECT w.*, 
lag(w.TEMPERATURE) over(order by w.RECORDDATE) temperature_day_before,
lag(w.RECORDDATE) over(order by w.RECORDDATE) previous_date_record
FROM WEATHER w) result
WHERE  (result.RECORDDATE - result.previous_date_record = 1) AND result.TEMPERATURE > result.temperature_day_before
ORDER BY result.RECORDDATE

drop table WEATHER