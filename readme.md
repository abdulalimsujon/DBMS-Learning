# DBMS & SQL Notes

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

---
