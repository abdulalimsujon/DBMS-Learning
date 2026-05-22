-- Active: 1779386390689@@127.0.0.1@5432@postgres@public
select * from person;

INSERT INTO person
VALUES (11, 'raain', 25, 'raian@gmail.com');


ALTER TABLE person 
ADD COLUMN  email VARCHAR(25) NOT NULL DEFAULT 'alimsujon12@gmail.com' ;

ALTER TABLE person 
  RENAME COLUMN user_name TO name;

ALTER TABLE person
ALTER COLUMN email TYPE  VARCHAR(50);

ALTER  TABLE person 
ALTER COLUMN age set NOT NULL;  


ALTER TABLE person 
  ALTER COLUMN age DROP NOT NULL; 

ALTER TABLE person 
ADD CONSTRAINT pk_user_age UNIQUE(age);

ALTER TABLE  person 
DROP CONSTRAINT pk_user_age;

Create table person2(
  id INTEGER,
  name varchar(25)
)

INSERT INTO person2(id,name) 
    VALUES(1,'abdul alim') ,(2,'sujon');

SELECT * FROM person2;

TRUNCATE table person2;
DROP TABLE person2;

create table students(
  student_id SERIAL PRIMARY KEY ,
  first_name  varchar(50),
  last_name varchar(50),
  age INT,
  grade char(2),
  course varchar(50),
  email varchar(100),
  dob DATE,
  blood_group varchar(5),
  country varchar(50)
)

ALTER TABLE students 
  ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE students 
  ALTER COLUMN last_name SET NOT NULL;

INSERT INTO students 
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('John', 'Doe', 20, 'A+', 'Computer Science', 'john.doe@gmail.com', '2005-03-15', 'O+', 'USA'),

('Emma', 'Watson', 22, 'A', 'Software Engineering', 'emma.watson@gmail.com', '2003-07-21', 'A+', 'UK'),

('Liam', 'Smith', 19, 'B+', 'Mathematics', 'liam.smith@gmail.com', '2006-01-10', 'B+', 'Canada'),

('Sophia', 'Brown', 21, 'A-', 'Physics', 'sophia.brown@gmail.com', '2004-11-05', 'AB+', 'Australia'),

('Noah', 'Johnson', 23, 'B', 'Chemistry', 'noah.johnson@gmail.com', '2002-09-18', 'O-', 'Germany'),

('Olivia', 'Davis', 20, 'A+', 'Biology', 'olivia.davis@gmail.com', '2005-06-12', 'A-', 'France'),

('James', 'Wilson', 24, 'C+', 'Mechanical Engineering', 'james.wilson@gmail.com', '2001-12-01', 'B-', 'India'),

('Ava', 'Martinez', 18, 'B+', 'English', 'ava.martinez@gmail.com', '2007-04-28', 'O+', 'Spain'),

('William', 'Anderson', 22, 'A', 'Economics', 'william.anderson@gmail.com', '2003-08-14', 'AB-', 'Italy'),

('Mia', 'Taylor', 21, 'A-', 'Business Administration', 'mia.taylor@gmail.com', '2004-02-09', 'A+', 'Bangladesh');


INSERT INTO students 
(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Daniel', 'Clark', 20, 'A+', 'Computer Science', 'daniel.clark@gmail.com', '2005-05-11', 'B+', 'USA'),

('Charlotte', 'Lewis', 21, 'A', 'Computer Science', 'charlotte.lewis@gmail.com', '2004-09-17', 'O+', 'USA'),

('Benjamin', 'Walker', 22, 'B+', 'Mathematics', 'benjamin.walker@gmail.com', '2003-03-29', 'A-', 'Canada'),

('Amelia', 'Hall', 19, 'B+', 'Mathematics', 'amelia.hall@gmail.com', '2006-07-08', 'AB+', 'Canada'),

('Ethan', 'Allen', 23, 'A-', 'Physics', 'ethan.allen@gmail.com', '2002-01-14', 'O-', 'Australia'),

('Harper', 'Young', 20, 'A-', 'Physics', 'harper.young@gmail.com', '2005-10-03', 'B-', 'Australia'),

('Michael', 'King', 24, 'B', 'Business Administration', 'michael.king@gmail.com', '2001-12-19', 'A+', 'Bangladesh'),

('Ella', 'Scott', 22, 'B', 'Business Administration', 'ella.scott@gmail.com', '2003-06-25', 'O+', 'Bangladesh'),

('Alexander', 'Green', 21, 'A', 'Software Engineering', 'alex.green@gmail.com', '2004-04-12', 'AB-', 'UK'),

('Grace', 'Baker', 20, 'A', 'Software Engineering', 'grace.baker@gmail.com', '2005-08-30', 'A+', 'UK');

SELECT email,age FROM  students;

SELECT email as "student email" FROM students;

SELECT * from students ORDER BY age ASC;

SELECT DISTINCT country from students;

SELECT * FROM students 
  WHERE country = 'UK';

SELECT * FROM students 
   WHERE grade = 'A' AND course='Software Engineering';

SELECT * FROM students 
   WHERE grade = 'A' OR country='India';

SELECT * FROM students 
   WHERE (grade = 'A' OR country='India') AND age = 20;


SELECT age,first_name FROM students 
   WHERE age >= 20 AND course = 'Physics';

SELECT first_name,age FROM students
   WHERE age != 20;

SELECT  *  from students 
      WHERE country = 'USA';

  SELECT * FROM students 
  WHERE grade = 'A-' AND course = 'Physics';
