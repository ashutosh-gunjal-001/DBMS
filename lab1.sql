CREATE TABLE Stud
(
  Sname VARCHAR2(20),
  Regno NUMBER(10),
  Dept VARCHAR2(20),
  Yr NUMBER(4),
  Mark1 DECIMAL(5, 2),
  Mark2 DECIMAL(5, 2),
  Mark3 DECIMAL(5, 2),
  sum DECIMAL(5, 2)
);

CREATE TABLE Faculty
(
  Fname VARCHAR2(20),
  Fid VARCHAR2(10),
  Desgn VARCHAR(20)
);

CREATE TABLE Course
(
  Cname VARCHAR2(20),
  Ccode VARCHAR2(10)
);

-- DESC Stud;
-- DESC Faculty;
-- DESC Course;

ALTER TABLE Stud
MODIFY Regno VARCHAR(10);
-- DESC Stud;

ALTER TABLE Stud 
ADD (Total DECIMAL(5, 2), Average DECIMAL(5, 2));
-- DESC Stud;

ALTER TABLE Stud 
DROP COLUMN Sum;
-- DESC Stud;

ALTER TABLE Faculty 
ADD (Department VARCHAR2(20), Salary VARCHAR(20));
-- DESC Faculty;

DROP TABLE Course;
-- DESC Course;

ALTER TABLE Stud 
RENAME TO Student;
-- DESC Student;

CREATE TABLE Course
(
  Cname VARCHAR2(20),
  Ccode VARCHAR2(10)
);
-- DESC Course;

INSERT INTO Student (Sname, Regno, Dept, Yr, Mark1, Mark2, Mark3, Total, Average)
VALUES 
('Alice', '20230001', 'CSE', 2023, 85.50, 90.00, 88.00, 263.50, 87.83),
('Bob', '20230002', 'ECE', 2023, 78.00, 80.50, 75.25, 233.75, 77.92),
('Chirag', '20230003', 'Mechanical', 2023, 92.00, 88.50, 89.75, 270.25, 90.08);

INSERT INTO Faculty VALUES 
('Dr. Smith', 'F001', 'Professor', 'CSE', '120000'),
('Dr. Johnson', 'F002', 'Assoc Prof', 'ME', '100000'),
('Dr. Brown', 'F003', 'Asst Prof', 'EE', '80000');

INSERT INTO Course VALUES 
('DBMS', 'CS101'),
('DSA', 'ME201'),
('Circuits', 'EE301');

-- SELECT * FROM Student;
-- SELECT * FROM Faculty;
-- SELECT * FROM Course;

DROP TABLE Course;
-- DESC Course;

CREATE TABLE Course
(
  Cname VARCHAR2(20),
  Ccode VARCHAR2(10)
);

TRUNCATE TABLE Course;
-- DESC Course;

CREATE TABLE Course
(
  Cname VARCHAR2(20),
  Ccode VARCHAR2(10)
);

INSERT INTO Course VALUES 
('DBMS', 'CS101'),
('DSA', 'ME201'),
('Circuits', 'EE301');

-- INSERT INTO Student
-- VALUES (&Sname, &Regno, &Dept, &Yr, &Mark1, &Mark2, &Mark3, &Total, &Average);
-- INSERT INTO Student
-- VALUES (&Sname, &Regno, &Dept, &Yr, &Mark1, &Mark2, &Mark3, &Total, &Average);

-- INSERT INTO Faculty 
-- VALUES (&Fname, &Fid, &Desgn, &Department, &Salary);
-- INSERT INTO Faculty 
-- VALUES (&Fname, &Fid, &Desgn, &Department, &Salary);

-- INSERT INTO Course 
-- VALUES (&Cname, &Ccode);
-- INSERT INTO Course 
-- VALUES (&Cname, &Ccode);

-- SELECT * 
-- FROM Student 
-- WHERE Dept = 'CSE';

-- SELECT *
-- FROM Faculty
-- WHERE Department = 'CSE';

-- SELECT *
-- FROM Faculty
-- WHERE Salary > 55000;

-- SELECT 
--     SUM(Mark1 + Mark2 + Mark3) AS Total_Marks,
--     AVG((Mark1 + Mark2 + Mark3) / 3) AS Average_Marks
-- FROM Student;

-- SELECT * FROM Student;

-- SELECT Fname FROM Faculty;

-- SELECT * 
-- FROM Faculty
-- WHERE Department = 'CSE';

UPDATE Student
SET Dept = 'CSE' 
WHERE Sname = 'Chirag';

-- SELECT * 
-- FROM Student
-- WHERE Sname = 'Chirag';

DELETE FROM Student
WHERE Dept = 'ECE';

-- SELECT * FROM Student;

SELECT * 
FROM Course 
WHERE Cname = 'DBMS';
