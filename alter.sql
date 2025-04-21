-- Active: 1745199090193@@127.0.0.1@5432@test_db
-- Create table test_table(id INTEGER,name VARCHAR(50),age INTEGER);
-- INSERT INTO test_table (id ,name,age)
-- VALUES(1,'manik',20);

SELECT * from test_table;


/* Add new Column----------- */
ALTER TABLE test_table
ADD COLUMN email VARCHAR(25) DEFAULT 'defaul@gmail.com' NOT NULL;


INSERT into test_table VALUES(1,'test',34,'test@gmail.com');

/* Add primary key for a column in table--------- */
ALTER Table test_table 
ADD PRIMARY KEY (id); 

/* Rename column name --------------- */
ALTER table test_table 
RENAME COLUMN age to user_age;


/* Change column type ----------- */
ALTER TABLE test_table
ALTER COLUMN email TYPE VARCHAR(50);

/* Set constrani for a column---------- */
ALTER Table test_table
ALter COLUMN user_age set NOT NULL;

/* Drop constraint --------------- */
ALTER Table test_table
ALter COLUMN user_age DROP NOT NULL;

/* Add unique constraint -------------- */
ALTER Table test_table
Add Constraint unique_test_table_user_age UNIQUE(user_age);

/* Drop constraint --------------- */
ALTER Table test_table
DROP constraint unique_test_table_user_age;

/* Truncate : for delete all data from a table but stay table structure ---------- */
TRUNCATE table test_table;