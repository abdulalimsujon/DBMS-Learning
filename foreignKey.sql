    
    CREATE TABLE "user"(
        id SERIAL PRIMARY KEY,
        username VARCHAR(25) NOT NULL
    )
   
      
    select * from "user";

    CREATE TABLE "post"(
        id SERIAL PRIMARY KEY,
        title TEXT NOT NULL,
        user_id INTEGER REFERENCES "user"(id) 
        --user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
         -- user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2;
    )

     ALTER TABLE post 
             ALTER COLUMN  user_id set NOT NULL; 

   INSERT INTO "user"(username)
      VALUES('abdul alim') ,('shamim al mamun') ,('sujon') ,('raian'), ('mahmudul');

   SELECT * FROM "user";

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

select * from post;

DELETE FROM "user"
   WHERE id = 4;

--DELETE contraint on DELETE user
--Cascading DELETE -- on delete cascade (if delete user then post delete automitically)
--setting NULL -- on delete set NULL
--restrict Deletion -- on delete restrict / on delete action (default)
--set defaut value -- ON delete set default


