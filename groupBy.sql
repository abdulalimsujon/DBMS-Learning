
SELECT * FROM students;

SELECT country FROM students
   GROUP BY country;
SELECT country ,count(*),avg(age) FROM students
   GROUP BY country;


SELECT country ,avg(age) FROM students
   GROUP BY country
HAVING  avg(age) > 20;  // where1 run  every1 individual row1

SELECT dob ,count(*) FROM students
            GROUP BY dob;
               

SELECT extract(year from dob) as birth_year,count(*) FROM students
            GROUP BY dob;
               
