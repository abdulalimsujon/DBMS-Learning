show timezone;


-- 2026-06-04 22:58:27.11738+06
SELECT now();

SELECT now()::date;
select current_date; 
-- 2026-06-04

create table timeZ (ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone );

insert into timeZ VALUES('2024-01-12 10:45:00','2026-06-12 10:45:00');

SELECT * FROM timeZ;
-- ts	2024-01-12 10:45:00
-- tsz	2026-06-12 10:45:00+06

SELECT to_char(now(),'yyyy/mm/dd');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

 SELECT age(CURRENT_DATE, '1996-07-29');


SELECT * FROM students;
