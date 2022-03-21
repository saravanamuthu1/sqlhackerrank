###Revising the Select Query-1
SELECT * FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;

###Revising the Select Query-2
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

###Select All
SELECT * FROM CITY;

###Select by ID
SELECT * FROM CITY WHERE ID = 1661; 

###Japanese Cities' Detail
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN'; 

###Japanese Cities' Name
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';  

###Weather Observation Station 1
SELECT CITY,STATE FROM STATION;    

###Weather Observation Station 3
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0 ORDER BY CITY ASC;      

###Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;       

###Weather Observation Station 5
select city, length(city) from station order by length(city) DESC,city ASC fetch first row only;
select city, length(city) from station order by length(city) asc ,city asc fetch first row only; 

###Weather Observation Station 6
SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' 
OR CITY LIKE 'U%' ORDER BY CITY ASC;  

###Weather Observation Station 7
SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' 
OR CITY LIKE '%u';    

###Weather Observation Station 8
SELECT DISTINCT CITY FROM STATION WHERE (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u') order by city;      

###Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U') AND lower(SUBSTR(CITY,1,1)) NOT IN
('a','e','i','o','u');     

###Weather Observation Station 10
SELECT DISTINCT CITY FROM STATION WHERE UPPER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('A','E','I','O','U') AND LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');    

###Weather Observation Station 11
SELECT DISTINCT CITY FROM STATION
WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U') AND lower(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR (upper(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('A','E','I','O','U') AND  lower(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u')); 

###Weather Observation Station 12
SELECT DISTINCT CITY FROM STATION
WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U') AND lower(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') AND (upper(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('A','E','I','O','U') AND  lower(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u')); 

###Higher Than 75 Marks
SELECT NAME 
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(name,length(name)-2,3),ID;
