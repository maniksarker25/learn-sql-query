
/* Create student table --------------- */
Create table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

/* Insert rows in student table */

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('John', 'Doe', 20, 'A+', 'Mathematics', 'john.doe@example.com', '2003-05-12', 'O+', 'USA'),
('Jane', 'Smith', 21, 'B', 'Physics', 'jane.smith@example.com', '2002-06-22', 'A-', 'Canada'),
('Samuel', 'Green', 22, 'A', 'Chemistry', 'samuel.green@example.com', '2001-07-10', 'B+', 'UK'),
('Emily', 'Johnson', 19, 'A-', 'Biology', 'emily.johnson@example.com', '2004-02-15', 'AB-', 'Australia'),
('Michael', 'Brown', 23, 'B+', 'Computer Science', 'michael.brown@example.com', '2000-08-05', 'O-', 'India'),
('Olivia', 'Davis', 20, 'A+', 'History', 'olivia.davis@example.com', '2003-04-25', 'A+', 'USA')
;



/* Get all data from a table ----------- */
SELECT * from students;


/* Get specific fields------------- */
SELECT email,age,blood_group from students;


/* get with rename with alies */
SELECT email as studentEmail, age as "Student Age" from students;



/* Get with sort */
SELECT * from students ORDER BY age DESC;


/* Get unique countries ---------- */
SELECT DISTINCT country from students;


/* Unique blood group */
SELECT DISTINCT blood_group from students;



/* Filter for country usa */

SELECT * from students
    WHERE country = 'USA';


/* Select student wtih A grade in physics */
SELECT * from students
    WHERE grade = 'A' AND course = 'Physics';



/* Select coutnry usa or australia */
SELECT * from students
    WHERE country = 'USA' OR country = 'Australia';


/* Contry usa or australia and age 20 */
SELECT * from students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;


/* comparision ----------------*/
SELECT * from students
    WHERE age > 20;

SELECT * FROM students
    WHERE age != 20;

SELECT * from students
    WHERE country != 'USA';