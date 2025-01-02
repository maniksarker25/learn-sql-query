SELECT * from students;


/* Delete  */

DELETE from students; /* Delete all  */


DELETE from students 
    WHERE grade = 'B';

DELETE from students 
    WHERE grade = 'C' AND country = 'USA';