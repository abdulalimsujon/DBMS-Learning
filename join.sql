


 CREATE TABLE "user"(
        id SERIAL PRIMARY KEY,
        username VARCHAR(25) NOT NULL
    )

INSERT INTO "user"(username)
    VALUES ('no name');

 CREATE TABLE "post"(
        id SERIAL PRIMARY KEY,
        title TEXT NOT NULL,
        user_id INTEGER REFERENCES "user"(id) NOT NULL
        --user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
         -- user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2;
    )

   ALTER TABLE post
     ALTER COLUMN user_id DROP NOT NULL;


INSERT INTO post (title, user_id) VALUES
('Introduction to PostgreSQL', 1),
('Learning SQL Joins', 1),

('My First Database Project', 2),
('Understanding Normalization', 2),

('MongoDB vs PostgreSQL', 3),
('Database Indexing Guide', 3),

('How to Use Foreign Keys', 4),
('ACID Properties Explained', 4),

('Advanced SQL Queries', 5),
('Database Design Best Practices', 5);

-- SELECT  title ,username FROM post 

-- JOIN "user" on post.user_id = "user".id;

SELECT  * FROM post as p

INNER JOIN "user" on p.user_id = "user".id;

--inner join--> match the condition as common then get all data

INSERT INTO post (id,title, user_id) VALUES
(12,'this is for null post11 ', NULL);


SELECT  * FROM post as p

LEFT JOIN "user" as u on p.user_id = u.id;


SELECT  * FROM post as p

 JOIN "user" as u on p.user_id = u.id;

SELECT  * FROM post as p

   RIGHT JOIN "user" as u on p.user_id = u.id;

select * from "user";


  SELECT * FROM post as p
    FULL JOIN "user" as u on p.user_id = u.id;

    CREATE TABLE employees(
                        emp_id INT,
                        emp_name VARCHAR(25),
                        dep_id INT
      );
      CREATE TABLE departments(
        dept_id INT,
        dept_name VARCHAR(50)
      );
      
   ALTER TABLE employees
     RENAME COLUMN dep_id TO dept_id;
    
    INSERT INTO employees VALUES
          (1,'JHON DOE',101),
          (2,'CARCLIN DOE',102),
          (3,'JONNY',103);
    INSERT INTO departments VALUES
           (101,'CSE'),
           (102,'SWE'),
           (103,'EEE');


  --cross join 
  SELECT * FROM employees
  CROSS JOIN departments;


--Natural join

  SELECT * FROM employees
  NATURAL JOIN departments;
