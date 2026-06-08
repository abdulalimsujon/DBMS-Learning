## DBMS & SQL Notes

## 1. Database

A **Database** is a structured collection of related data that represents real-world entities and is organized for efficient storage, retrieval, and management.

---

## 2. Data

Data is raw facts or figures that can be recorded in the form of text, numbers, images, etc.

---

## 3. Information

Information is processed and organized data that provides meaningful context, insight, or knowledge.

---

# 4. DBMS (Database Management System)

A **DBMS** is software used to create, manage, store, retrieve, and manipulate databases.

Examples:

- MySQL
- PostgreSQL
- Oracle
- SQL Server

---

# 5. SQL (Structured Query Language)

SQL is a language used to communicate with relational database systems.

Example:

```sql
SELECT * FROM students;
```

This query retrieves all data from the `students` table.

---

# 6. Database Models

Database models define how data is stored and organized.

---

## 6.1 Hierarchical Model

- Data is stored in a tree-like structure.
- Parent-child relationship exists.
- One parent can have multiple children.

---

## 6.2 Network Model

- Similar to hierarchical model.
- A child can have multiple parents.
- Uses graph structure.

Example:
A student can enroll in multiple courses.

---

## 6.3 Relational Model

Most popular database model.

- Data is stored in tables (relations).

### Example Table

| id  | name       | age |
| --- | ---------- | --- |
| 1   | Abdul Alim | 22  |

### Advantages

- Easy to understand
- Flexible
- Supports SQL
- Maintains relationships using keys

---

# 7. Entity / Relation

An **Entity** represents a real-world object.

In relational databases:

- Each table is called an entity or relation.

Example:

- `students` table = Entity

---

# 8. Column / Attribute

A **Column** represents a property of an entity.

Example columns:

- id
- name
- age

### Degree / Cardinality

The total number of columns in a table is called the **Degree**.

Example:
If a table has 5 columns, then degree = 5.

---

# 9. Tuple / Row / Record

A **Tuple** represents a single row in a table.

| id  | name       | age |
| --- | ---------- | --- |
| 1   | Abdul Alim | 22  |

The row `(1, Abdul Alim, 22)` is called a tuple or record.

---

# 10. Constraint / Domain

## Constraint

Rules applied on data to maintain accuracy and consistency.

Examples:

- PRIMARY KEY
- UNIQUE
- NOT NULL

---

## Domain

The set of valid values allowed for an attribute.

Example:
If age must be between 1–100, then that range is the domain.

---

# 11. Keys in DBMS

Keys are used to uniquely identify records in a table and maintain relationships between tables.

---

# 12. Super Key

A **Super Key** is an attribute or set of attributes that can uniquely identify each row in a table.

### Characteristics

- Can be a single attribute
- Can be multiple attributes
- May contain extra unnecessary attributes
- It is a superset of candidate keys

### Example Table

| student_id | email          | phone      |
| ---------- | -------------- | ---------- |
| 101        | alim@gmail.com | 017xxxxxxx |

### Possible Super Keys

- `student_id`
- `email`
- `(student_id, email)`
- `(student_id, phone)`

Because all can uniquely identify a row.

---

# Database Concepts

## Anomalies

Anomalies in a database refer to inconsistencies or unexpected issues that can occur during data manipulation or retrieval.

There are three types of anomalies:

### 1. Update Anomaly

An update anomaly occurs when the same data is stored in multiple places and must be updated everywhere. If one place is missed, inconsistent data may occur.

### 2. Delete Anomaly

A delete anomaly occurs when deleting one piece of data unintentionally removes other important data.

### 3. Insert Anomaly

An insert anomaly occurs when certain data cannot be inserted into the database without the presence of other related data.

---

# Functional Dependency

Functional dependency means that the value of one attribute (or a set of attributes) uniquely determines the value of another attribute in a database table.

Example:

```text
T1.x = T2.x
T1.y = T2.y
```

This means if two rows have the same value of `x`, then they must also have the same value of `y`.

---

# Normalization

Normalization is a series of guidelines that helps ensure that the design of a database is efficient, organized, and free from data anomalies.

---

# First Normal Form (1NF)

A table is in First Normal Form if it satisfies the following rules:

1. Atomic values only (each column contains a single value).
2. Unique rows/records.
3. No positional dependency of data.
4. Columns should contain data of the same type.
5. A primary key should be defined.

---

# Second Normal Form (2NF)

A table is in Second Normal Form if:

1. It is already in 1NF.
2. It does not contain any non-prime (non-key) attribute that is functionally dependent on a proper subset of any candidate key.

---

# Third Normal Form (3NF)

A table is in Third Normal Form if:

1. It is already in 2NF.
2. It does not contain transitive dependency.

## Transitive Dependency

If:

```text
X → Y
Y → Z
```

Then:

```text
X → Z
```

This is called transitive dependency.

# SQL Commands in DBMS

SQL commands are divided into several categories:

- DDL
- DML
- DCL
- TCL
- DQL

---

# 1. DDL (Data Definition Language)

DDL is used to define and manage database structure.

Works with:

- Database
- Table
- Schema
- Constraints

---

## Main DDL Commands

| Command  | Purpose                    |
| -------- | -------------------------- |
| CREATE   | Create database/table      |
| ALTER    | Modify table structure     |
| DROP     | Delete database/table      |
| TRUNCATE | Remove all rows from table |
| RENAME   | Rename table               |

---

## CREATE Example

```sql
CREATE TABLE students (
   id INT,
   name VARCHAR(50),
   age INT
);
```

Creates a new table named `students`.

---

## ALTER Example

```sql
ALTER TABLE students
ADD email VARCHAR(100);
```

Adds a new column.

---

## DROP Example

```sql
DROP TABLE students;
```

Deletes the entire table permanently.

---

## TRUNCATE Example

```sql
TRUNCATE TABLE students;
```

Deletes all rows but keeps the table structure.

---

# 2. DML (Data Manipulation Language)

DML is used to manipulate data inside tables.

---

## Main DML Commands

| Command | Purpose              |
| ------- | -------------------- |
| INSERT  | Add new data         |
| UPDATE  | Modify existing data |
| DELETE  | Remove data          |

---

## INSERT Example

```sql
INSERT INTO students(id, name, age)
VALUES(1, 'Alim', 22);
```

Adds a new row.

---

## UPDATE Example

```sql
UPDATE students
SET age = 23
WHERE id = 1;
```

Updates existing data.

---

## DELETE Example

```sql
DELETE FROM students
WHERE id = 1;
```

Deletes specific rows.

---

# 3. DCL (Data Control Language)

DCL is used to control user permissions and access.

---

## Main DCL Commands

| Command | Purpose           |
| ------- | ----------------- |
| GRANT   | Give permission   |
| REVOKE  | Remove permission |

---

## GRANT Example

```sql
GRANT SELECT, INSERT
ON students
TO user1;
```

Gives permission to user.

---

## REVOKE Example

```sql
REVOKE INSERT
ON students
FROM user1;
```

Removes permission.

---

# 4. TCL (Transaction Control Language)

TCL is used to manage transactions in databases.

A transaction is a group of SQL operations executed together.

---

## Main TCL Commands

| Command   | Purpose                  |
| --------- | ------------------------ |
| COMMIT    | Save changes permanently |
| ROLLBACK  | Undo changes             |
| SAVEPOINT | Create checkpoint        |

---

## COMMIT Example

```sql
COMMIT;
```

Permanently saves transaction.

---

## ROLLBACK Example

```sql
ROLLBACK;
```

Undo changes before commit.

---

## SAVEPOINT Example

```sql
SAVEPOINT sp1;
```

Creates a checkpoint inside transaction.

---

## TCL Transaction Example

```sql
START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

UPDATE accounts
SET balance = balance + 500
WHERE id = 2;

COMMIT;
```

If any problem happens before commit, rollback can restore previous state.

---

# 5. DQL (Data Query Language)

DQL is used to retrieve data from database.

---

## Main DQL Command

| Command | Purpose       |
| ------- | ------------- |
| SELECT  | Retrieve data |

---

# PostgreSQL Useful Commands

## Show Tables

```sql
\dt
```

---

## Show Table Schema

```sql
\d person
```

---

## Create Database

```sql
CREATE DATABASE databaseName;
```

---

## Drop Database

```sql
DROP DATABASE databaseName;
```

---

# Data Types in PostgreSQL

## SERIAL

Auto increment integer.

---

## Character Types

### CHAR(n)

- Fixed length
- Fills remaining space with blanks

Example:

```sql
CHAR(10)
```

---

## VARCHAR(n)

- Variable length
- Does not fill spaces

Example:

```sql
VARCHAR(255)
```

---

## TEXT

- No fixed length limit

---

# Time Types

## TIME

```sql
TIME(HH:MM:SS)
```

---

## TIMESTAMP

```sql
TIMESTAMP(YY:MM:DD HH:MI:SS)
```

---

## TIMESTAMPTZ

Timestamp with timezone.

```sql
TIMESTAMPTZ
```

---

# UUID

UUID = Universal Unique Identifier

- Uses 128-bit value
- Generates unique ids globally

---

# Constraints in SQL

## Types of Constraints

- NOT NULL
- UNIQUE
- PRIMARY KEY
- DEFAULT
- CHECK
- FOREIGN KEY

---

## CHECK Constraint Example

```sql
CHECK(age >= 18)
```

---

# Create Table Example

```sql
CREATE TABLE person (
   id SERIAL,
   user_name VARCHAR(20) NOT NULL,
   age INTEGER CHECK(age >= 18),

   PRIMARY KEY(id, user_name),

   UNIQUE(user_name, age)
);
```

---

# INSERT Query

```sql
INSERT INTO your_table(column1, column2, column3)
VALUES(value1, value2, value3);
```

---

# ALTER TABLE

## Add Column

```sql
ALTER TABLE person
ADD COLUMN email VARCHAR(25) NOT NULL;
```

---

## Rename Column

```sql
ALTER TABLE person
RENAME COLUMN user_name TO name;
```

---

## Add Constraint

```sql
ALTER TABLE person
ADD CONSTRAINT pk_user_age UNIQUE(age);
```

---

## Drop Constraint

```sql
ALTER TABLE person
DROP CONSTRAINT pk_user_age;
```

---

# SELECT Statement

The `SELECT` statement is used to retrieve data from one or more tables.

Clauses:

- SELECT
- FROM
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOIN
- DISTINCT
- LIMIT
- OFFSET

---

## Select Specific Columns

```sql
SELECT email, age FROM students;
```

---

## Alias Example

```sql
SELECT email AS "student email"
FROM students;
```

---

## ORDER BY

```sql
SELECT *
FROM students
ORDER BY first_name ASC;
```

```sql
SELECT *
FROM students
ORDER BY first_name DESC;
```

---

## DISTINCT

```sql
SELECT DISTINCT country
FROM students;
```

---

# WHERE Clause Examples

## Using AND

```sql
SELECT *
FROM students
WHERE grade = 'A'
AND course = 'Software Engineering';
```

---

## Using OR

```sql
SELECT *
FROM students
WHERE grade = 'A'
OR country = 'India';
```

---

## Not Equal

```sql
SELECT first_name, age
FROM students
WHERE age != 20;
```

---

# Scalar Function vs Aggregate Function

## Scalar Function

Operates on a single value and returns a single value.

Examples:

- UPPER()
- LOWER()
- CONCAT()
- LENGTH()

Example:

```sql
SELECT CONCAT(first_name, ' ', last_name)
FROM students;
```

---

## Aggregate Function

Operates on multiple rows and returns one summarized value.

Examples:

- AVG()
- MAX()
- MIN()
- SUM()
- COUNT()

Example:

```sql
SELECT MAX(LENGTH(first_name))
FROM students;
```

---

# NULL in SQL

`NULL` means:

- No value
- Unknown value
- Missing data

---

## Check NULL

```sql
SELECT *
FROM students
WHERE email IS NOT NULL;
```

---

# COALESCE

Used to replace NULL values.

```sql
SELECT COALESCE(email, 'No email provided')
FROM students;
```

---

# IN Operator

```sql
SELECT *
FROM students
WHERE country IN ('Australia', 'Canada', 'USA');
```

---

# BETWEEN Operator

```sql
SELECT *
FROM students
WHERE age BETWEEN 19 AND 20;
```

---

# LIKE & ILIKE

## LIKE

Case-sensitive pattern matching.

```sql
SELECT *
FROM students
WHERE first_name LIKE 'A%';
```

---

## ILIKE

Case-insensitive pattern matching.

```sql
SELECT *
FROM students
WHERE first_name ILIKE 'A%';
```

---

# Wildcards

| Symbol | Meaning                  |
| ------ | ------------------------ |
| %      | Any number of characters |
| \_     | Exactly one character    |

---

# OFFSET

OFFSET skips rows from the beginning.

```sql
SELECT *
FROM students
OFFSET 5;
```

---

# Notes

- Single quotes `' '` are used for strings.
- Double quotes `" "` are used for column aliases or identifiers.

Example:

```sql
SELECT email AS "student email"
FROM students;
```

# PostgreSQL Date & Time Notes

## Check Current Timezone

```sql
SHOW timezone;
```

Displays the current database session timezone.

---

## Get Current Date and Time

```sql
SELECT now();
```

Example Output:

```sql
2026-06-04 22:58:27.11738+06
```

Returns the current timestamp with timezone information.

---

## Get Only Current Date

```sql
SELECT now()::date;

SELECT CURRENT_DATE;
```

Example Output:

```sql
2026-06-04
```

Both return only the current date.

---

# Timestamp Data Types

## Create Table

```sql
CREATE TABLE timeZ (
    ts  TIMESTAMP WITHOUT TIME ZONE,
    tsz TIMESTAMP WITH TIME ZONE
);
```

### Difference

| Data Type                   | Description                                 |
| --------------------------- | ------------------------------------------- |
| TIMESTAMP WITHOUT TIME ZONE | Stores only date and time                   |
| TIMESTAMP WITH TIME ZONE    | Stores date, time, and timezone information |

---

## Insert Data

```sql
INSERT INTO timeZ
VALUES (
    '2024-01-12 10:45:00',
    '2026-06-12 10:45:00'
);
```

---

## View Data

```sql
SELECT * FROM timeZ;
```

Example Output:

```sql
ts  | 2024-01-12 10:45:00
tsz | 2026-06-12 10:45:00+06
```

Notice that `tsz` contains timezone information.

---

# Format Date & Time

## Convert Date to Custom Format

```sql
SELECT TO_CHAR(now(), 'YYYY/MM/DD');
```

Example Output:

```sql
2026/06/04
```

Common Formats:

| Format | Meaning               |
| ------ | --------------------- |
| YYYY   | 4-digit year          |
| MM     | Month                 |
| DD     | Day                   |
| HH24   | Hour (24-hour format) |
| MI     | Minutes               |
| SS     | Seconds               |

Example:

```sql
SELECT TO_CHAR(now(), 'YYYY-MM-DD HH24:MI:SS');
```

---

# Date Arithmetic

## Subtract Interval from Current Date

```sql
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';
```

Returns the date that was 1 year and 2 months before today.

---

## Add Interval

```sql
SELECT CURRENT_DATE + INTERVAL '10 day';
```

Returns a date 10 days in the future.

---

# Calculate Age

## Calculate Age Between Two Dates

```sql
SELECT AGE(CURRENT_DATE, '1996-07-29');
```

Example Output:

```sql
29 years 10 mons 6 days
```

Returns the difference as:

- Years
- Months
- Days

---

## Calculate Age for Every Student

```sql
SELECT *,
       AGE(CURRENT_DATE, dob)
FROM students;
```

Example Output:

| id  | name | dob        | age                     |
| --- | ---- | ---------- | ----------------------- |
| 1   | John | 2000-05-10 | 26 years 0 mons 25 days |

Useful for calculating a person's age from their date of birth.

---

# Extract Specific Parts from Date

## Extract Month

```sql
SELECT EXTRACT(MONTH FROM '2024-01-25'::date);
```

Output:

```sql
1
```

---

## Extract Year

```sql
SELECT EXTRACT(YEAR FROM '2024-01-25'::date);
```

Output:

```sql
2024
```

---

## Extract Day

```sql
SELECT EXTRACT(DAY FROM '2024-01-25'::date);
```

Output:

```sql
25
```

---

# Quick Summary

```sql
-- Check timezone
SHOW timezone;

-- Current timestamp
SELECT now();

-- Current date
SELECT CURRENT_DATE;

-- Format date
SELECT TO_CHAR(now(), 'YYYY/MM/DD');

-- Date arithmetic
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

-- Calculate age
SELECT AGE(CURRENT_DATE, '1996-07-29');

-- Calculate age from DOB column
SELECT *, AGE(CURRENT_DATE, dob)
FROM students;

-- Extract month
SELECT EXTRACT(MONTH FROM '2024-01-25'::date);
```

## Key Functions

| Function       | Purpose                     |
| -------------- | --------------------------- |
| `now()`        | Current timestamp           |
| `CURRENT_DATE` | Current date                |
| `TO_CHAR()`    | Format date/time            |
| `AGE()`        | Calculate age/difference    |
| `INTERVAL`     | Add/Subtract time           |
| `EXTRACT()`    | Extract year/month/day etc. |
| `TIMESTAMP`    | Store date & time           |
| `TIMESTAMPTZ`  | Store date, time & timezone |

# PostgreSQL GROUP BY & HAVING Notes

## View All Students

```sql
SELECT * FROM students;
```

Returns all rows and columns from the `students` table.

---

# GROUP BY

`GROUP BY` is used to group rows that have the same values in one or more columns.

Syntax:

```sql
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;
```

---

## Get Unique Countries

```sql
SELECT country
FROM students
GROUP BY country;
```

This groups rows by country and effectively returns distinct countries.

Equivalent to:

```sql
SELECT DISTINCT country
FROM students;
```

---

## Count Students Per Country

```sql
SELECT country, COUNT(*)
FROM students
GROUP BY country;
```

Example Output:

| country | count |
| ------- | ----- |
| USA     | 10    |
| Canada  | 5     |
| UK      | 7     |

---

## Count Students and Average Age Per Country

```sql
SELECT country,
       COUNT(*),
       AVG(age)
FROM students
GROUP BY country;
```

Example Output:

| country | count | avg  |
| ------- | ----- | ---- |
| USA     | 10    | 23.5 |
| Canada  | 5     | 21.8 |

Aggregate Functions:

| Function | Description    |
| -------- | -------------- |
| COUNT()  | Counts rows    |
| AVG()    | Average value  |
| SUM()    | Total value    |
| MIN()    | Smallest value |
| MAX()    | Largest value  |

---

# HAVING Clause

`HAVING` filters grouped data after `GROUP BY`.

### Difference Between WHERE and HAVING

| WHERE                                   | HAVING                      |
| --------------------------------------- | --------------------------- |
| Filters individual rows                 | Filters grouped results     |
| Executes before GROUP BY                | Executes after GROUP BY     |
| Cannot use aggregate functions directly | Can use aggregate functions |

---

## Filter Groups Using HAVING

```sql
SELECT country,
       AVG(age)
FROM students
GROUP BY country
HAVING AVG(age) > 20;
```

Returns only countries where the average age is greater than 20.

Execution Order:

```text
FROM
↓
WHERE
↓
GROUP BY
↓
HAVING
↓
SELECT
↓
ORDER BY
```

---

# Group By Date of Birth

## Count Students Having Same DOB

```sql
SELECT dob,
       COUNT(*)
FROM students
GROUP BY dob;
```

Example Output:

| dob        | count |
| ---------- | ----- |
| 2000-05-10 | 3     |
| 2001-01-20 | 2     |

Groups students by exact date of birth.

---

# Group By Birth Year

## Count Students by Birth Year

❌ Incorrect:

```sql
SELECT EXTRACT(YEAR FROM dob) AS birth_year,
       COUNT(*)
FROM students
GROUP BY dob;
```

Reason:
If you select `EXTRACT(YEAR FROM dob)`, then you should group by the same expression.

---

✅ Correct:

```sql
SELECT EXTRACT(YEAR FROM dob) AS birth_year,
       COUNT(*)
FROM students
GROUP BY EXTRACT(YEAR FROM dob);
```

Example Output:

| birth_year | count |
| ---------- | ----- |
| 2000       | 15    |
| 2001       | 12    |
| 2002       | 9     |

This groups students by year instead of exact birth date.

---

# More GROUP BY Examples

## Maximum Age Per Country

```sql
SELECT country,
       MAX(age)
FROM students
GROUP BY country;
```

---

## Minimum Age Per Country

```sql
SELECT country,
       MIN(age)
FROM students
GROUP BY country;
```

---

## Total Age Per Country

```sql
SELECT country,
       SUM(age)
FROM students
GROUP BY country;
```

---

## Multiple Columns in GROUP BY

```sql
SELECT country,
       gender,
       COUNT(*)
FROM students
GROUP BY country, gender;
```

Groups students by both country and gender.

---

# Quick Summary

```sql
-- Unique countries
SELECT country
FROM students
GROUP BY country;

-- Count students by country
SELECT country, COUNT(*)
FROM students
GROUP BY country;

-- Average age by country
SELECT country, AVG(age)
FROM students
GROUP BY country;

-- Filter groups
SELECT country, AVG(age)
FROM students
GROUP BY country
HAVING AVG(age) > 20;

-- Count by DOB
SELECT dob, COUNT(*)
FROM students
GROUP BY dob;

-- Count by birth year
SELECT EXTRACT(YEAR FROM dob) AS birth_year,
       COUNT(*)
FROM students
GROUP BY EXTRACT(YEAR FROM dob);
```

## Key Concepts

| Concept   | Purpose                      |
| --------- | ---------------------------- |
| GROUP BY  | Groups rows with same values |
| COUNT()   | Counts rows                  |
| AVG()     | Calculates average           |
| SUM()     | Calculates total             |
| MIN()     | Smallest value               |
| MAX()     | Largest value                |
| HAVING    | Filters grouped data         |
| EXTRACT() | Extracts parts of date/time  |

# 🔑 PostgreSQL Foreign Key Notes (Full Revision)

---

## 🧠 What is Foreign Key?

A **Foreign Key** is a column that links one table to another table’s **Primary Key**.

👉 It creates a relationship between tables.

Example:

- `post.user_id → user.id`

---

## 👤 Step 1: Create User Table (Parent Table)

```sql
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);
```

---

## 📝 Step 2: Create Post Table (Child Table)

### 🔗 Foreign Key Relationship

```sql
CREATE TABLE "post" (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);
```

---

## 📌 Insert Data into User Table

```sql
INSERT INTO "user"(username)
VALUES
('abdul alim'),
('shamim al mamun'),
('sujon'),
('raian'),
('mahmudul');
```

---

## 📌 View Users

```sql
SELECT * FROM "user";
```

---

## 📌 Insert Data into Post Table

```sql
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
```

---

## 📌 View Posts

```sql
SELECT * FROM post;
```

---

## 🧨 Delete Example

```sql
DELETE FROM "user"
WHERE id = 4;
```

---

## ⚠️ Foreign Key Delete Rules

---

## 🔥 1. CASCADE

👉 If parent is deleted → child rows also deleted

```sql
user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE;
```

---

## ⚪ 2. SET NULL

👉 If parent is deleted → child becomes NULL

```sql
user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL;
```

---

## 🟡 3. SET DEFAULT

👉 If parent is deleted → default value used

```sql
user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2;
```

---

## 🚫 4. RESTRICT (Default)

👉 Prevents deletion if child exists

---

## 🧠 Example Behavior

### If you run:

```sql
DELETE FROM "user" WHERE id = 4;
```

### Then:

- CASCADE → post rows deleted too
- SET NULL → post.user_id becomes NULL
- RESTRICT → deletion blocked
- SET DEFAULT → user_id becomes default value

---

## 📌 Final Relationship Example

### Tables:

```
user (parent)
  id → PK

post (child)
  user_id → FK references user.id
```

---

## 🚀 Real JOIN Connection

```sql
SELECT p.title, u.username
FROM post p
INNER JOIN "user" u
ON p.user_id = u.id;
```

---

## 🧾 Quick Summary

- FOREIGN KEY = links tables
- REFERENCES = defines relation
- ON DELETE = controls behavior when parent is deleted

---

# 📘 PostgreSQL Joins – Full Examples (Easy Revision)

---

## 🟢 1. INNER JOIN

### 👉 Only matching records from both tables

### Example

```sql
SELECT p.title, u.username
FROM post p
INNER JOIN "user" u
ON p.user_id = u.id;
```

### Result idea:

| title                     | username        |
| ------------------------- | --------------- |
| Intro to PostgreSQL       | abdul alim      |
| SQL Joins                 | abdul alim      |
| My First Database Project | shamim al mamun |

✔ Only rows where `user_id` exists in both tables

---

## 🔵 2. LEFT JOIN

### 👉 All posts + matching users (NULL if no user)

### Example

```sql
SELECT p.title, u.username
FROM post p
LEFT JOIN "user" u
ON p.user_id = u.id;
```

### Result idea:

| title               | username   |
| ------------------- | ---------- |
| Intro to PostgreSQL | abdul alim |
| Some Post           | NULL       |

✔ All rows from LEFT table (post)

---

## 🟣 3. RIGHT JOIN

### 👉 All users + matching posts (NULL if no post)

### Example

```sql
SELECT p.title, u.username
FROM post p
RIGHT JOIN "user" u
ON p.user_id = u.id;
```

### Result idea:

| title               | username   |
| ------------------- | ---------- |
| Intro to PostgreSQL | abdul alim |
| NULL                | new_user   |

✔ All rows from RIGHT table (user)

---

## 🟡 4. FULL JOIN

### 👉 Everything from both tables

### Example

```sql
SELECT p.title, u.username
FROM post p
FULL JOIN "user" u
ON p.user_id = u.id;
```

### Result idea:

| title               | username   |
| ------------------- | ---------- |
| Intro to PostgreSQL | abdul alim |
| NULL                | ghost_user |
| Some Post           | NULL       |

✔ Shows all matched + unmatched rows

---

## 🔴 5. CROSS JOIN

### 👉 Every combination of rows

### Example

```sql
SELECT e.emp_name, d.dept_name
FROM employees e
CROSS JOIN departments d;
```

### Result idea:

If:

- 3 employees
- 3 departments

Then result = 9 rows

| emp_name    | dept_name |
| ----------- | --------- |
| JHON DOE    | CSE       |
| JHON DOE    | SWE       |
| JHON DOE    | EEE       |
| CARCLIN DOE | CSE       |
| ...         | ...       |

✔ Cartesian product (all combinations)

---

## 🟤 6. NATURAL JOIN

### 👉 Automatically joins same column name (`dept_id`)

### Example

```sql
SELECT e.emp_name, d.dept_name
FROM employees e
NATURAL JOIN departments d;
```

### Result idea:

| emp_name    | dept_name |
| ----------- | --------- |
| JHON DOE    | CSE       |
| CARCLIN DOE | SWE       |
| JONNY       | EEE       |

✔ Auto-matches same column names

---

## 🚀 Quick Memory Trick

| Join    | Meaning            |
| ------- | ------------------ |
| INNER   | only match         |
| LEFT    | all left + match   |
| RIGHT   | all right + match  |
| FULL    | everything         |
| CROSS   | all combinations   |
| NATURAL | auto match columns |

## PostgreSQL Basic Commands

### Show users (roles)

```sql
\du
```

### Show tables

```sql
\d
```

### Show current connection info

```sql
\conninfo
```

---

## User Management

### Create a user with password

```sql
CREATE USER user2 WITH LOGIN ENCRYPTED PASSWORD '123456';
```

---

## Privileges Management

### Grant all privileges on a table

```sql
GRANT ALL PRIVILEGES ON TABLE test_table TO user1;
```

### Revoke SELECT permission from a user

```sql
REVOKE SELECT ON TABLE testing_table FROM user1;
```

### Grant SELECT on all tables in schema

```sql
GRANT SELECT ON ALL TABLES IN SCHEMA public TO role1;
```

---
