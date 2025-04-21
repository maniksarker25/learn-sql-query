-- Active: 1745199090193@@127.0.0.1@5432@test_db
-- Create table test_table(id INTEGER,name VARCHAR(50),age INTEGER);
-- INSERT INTO test_table (id ,name,age)
-- VALUES(1,'manik',20);

SELECT * from test_table;


ALTER TABLE test_table
ADD COLUMN email VARCHAR(25) DEFAULT 'defaul@gmail.com' NOT NULL;


INSERT into test_table VALUES(1,'test',34,'test@gmail.com');


ALTER Table test_table 
ADD PRIMARY KEY (id); 


ALTER table test_table 
RENAME COLUMN age to user_age;


ALTER TABLE test_table
ALTER COLUMN email TYPE VARCHAR(50);


ALTER Table test_table
ALter COLUMN user_age set NOT NULL;


ALTER Table test_table
ALter COLUMN user_age DROP NOT NULL;


ALTER Table test_table
Add Constraint unique_test_table_user_age UNIQUE(user_age);


ALTER Table test_table
DROP constraint unique_test_table_user_age;

