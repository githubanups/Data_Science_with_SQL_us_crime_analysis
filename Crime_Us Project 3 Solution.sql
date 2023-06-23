
/* Course-End Project: US Crime Data Exploration and Analysis By PAVAN LANDE */

/* Task 1. :-> Create a SQL database containing data related to the case number, primary crime category, 
crime description, crime location, and arrest status using the dataset */

USE crime_us;

SELECT ID,
  	`Case Number`,
  	`Primary Type`,
  	Description,
  	Arrest,
  	Location
   FROM crime_us;

/* Task 2:-> Make a database in SQL where theft costs more than $500. */

SELECT* FROM crime_us
WHERE Description = 'OVER $500';

/* Task 3 :->  Determine the overall number of cases for each major category of crime. */

SELECT count(*)
FROM crime_us;

SELECT `Primary Type`, COUNT(`Primary Type`)
FROM crime_us
group by `Primary Type`
order by count(`Primary Type`);

/* Task 4:-> Apply 1NF normalization to the dataset provided */

select cast(new_datetime as date) date_, cast(new_datetime as time) time_
from (select Date,
Coalesce(str_to_date(Date, '%m-%d-%Y %T'), str_to_date(Date, '%m/%d/%Y %T')) as new_datetime
From crime_us)d ;



