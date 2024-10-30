-- University DataBase Management System Project

-- Step 1: Create the University Database
CREATE DATABASE Bharati_Vidyapeeth_University;
USE Bharati_Vidyapeeth_University;

-- Step 2: Create the Tables

-- Table A: College_Table
CREATE TABLE College_Table (
    College_ID  varchar(10) PRIMARY KEY NOT NULL,
    College_Name VARCHAR(100) NOT NULL ,
    College_Area VARCHAR(100) NOT NULL 
);

-- Table B: Department_Table
CREATE TABLE Department_Table (
    Dept_ID  varchar(10) PRIMARY KEY NOT NULL,
    Dept_Name VARCHAR(100) NOT NULL,
    Dept_Facility VARCHAR(100) NOT NULL,
    College_ID varchar(10),
    FOREIGN KEY (College_ID) REFERENCES College_Table(College_ID)
);


-- Table C: Professor_Table
CREATE TABLE Professor_Table (
    Professor_ID  varchar(10) PRIMARY KEY,
    Professor_Name VARCHAR(100),
    Professor_Subject VARCHAR(100),
    Dept_ID varchar(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department_Table(Dept_ID)
);

-- Table D: Student_Table
CREATE TABLE Student_Table (
    Student_ID varchar(10) PRIMARY KEY,
    Student_Name VARCHAR(100),
    Student_Stream VARCHAR(100),
    Professor_ID varchar(10),
    FOREIGN KEY (Professor_ID) REFERENCES Professor_Table(Professor_ID)
);

-- Insert Data into College_Table
INSERT INTO College_Table (College_ID, College_Name, College_Area) VALUES
('C1', 'Institute of Science and Technology', 'Pune'),
('C2', 'College of Arts and Humanities', 'Mumbai'),
('C3', 'Institute of Management and Research', 'Delhi'),
('C4', 'College of Engineering', 'Sangli');

-- Insert Data into Department_Table
INSERT INTO Department_Table (Dept_ID, Dept_Name, Dept_Facility, College_ID) VALUES
('D1', 'Computer Science', 'Tech Lab', 'C1'),
('D2', 'Physics', 'Physics Lab', 'C1'),
('D3', 'English Literature', 'Library', 'C2'),
('D4', 'Economics', 'Economics Research Center', 'C3'),
('D5', 'Mechanical Engineering', 'Workshop', 'C4'),
('D6', 'Electrical Engineering', 'Power Lab', 'C4'),
('D7', 'Mathematics', 'Math Lab', 'C1'),
('D8', 'History', 'History Archives', 'C2'),
('D9', 'Business Administration', 'Finance Lab', 'C3'),
('D10', 'Civil Engineering', 'Structure Lab', 'C4');

-- Insert Data into Professor_Table
INSERT INTO Professor_Table (Professor_ID, Professor_Name, Professor_Subject, Dept_ID) VALUES
('P1', 'Dr. A. Sharma', 'Data Structures', 'D1'),
('P2', 'Dr. B. Gupta', 'Quantum Physics', 'D2'),
('P3', 'Dr. C. Menon', 'English Renaissance Literature', 'D3'),
('P4', 'Dr. D. Kumar', 'Microeconomics', 'D4'),
('P5', 'Dr. E. Nair', 'Fluid Mechanics', 'D5'),
('P6', 'Dr. F. Joshi', 'Power Electronics', 'D6'),
('P7', 'Dr. G. Sen', 'Advanced Calculus', 'D7'),
('P8', 'Dr. H. Iyer', 'Ancient Indian History', 'D8'),
('P9', 'Dr. I. Rao', 'Corporate Finance', 'D9'),
('P10', 'Dr. J. Desai', 'Structural Design', 'D10');

-- Insert Data into Student_Table
INSERT INTO Student_Table (Student_ID, Student_Name, Student_Stream, Professor_ID) VALUES
('S1', 'Priya Mehta', 'Computer Science', 'P1'),
('S2', 'Rahul Kumar', 'Physics', 'P2'),
('S3', 'Anjali Singh', 'English Literature', 'P3'),
('S4', 'Vikram Patel', 'Economics', 'P4'),
('S5', 'Nisha Kaur', 'Mechanical Engineering', 'P5'),
('S6', 'Raj Verma', 'Electrical Engineering', 'P6'),
('S7', 'Sneha Desai', 'Mathematics', 'P7'),
('S8', 'Amit Sharma', 'History', 'P8'),
('S9', 'Rohit Khanna', 'Business Administration', 'P9'),
('S10', 'Pooja Rao', 'Civil Engineering', 'P10');

/*Task 2:-*/

select * from College_Table;
select * from Student_Table;
select * from Professor_Table;
select * from Department_Table;

/*1. Give the information of College_ID and College_name from
College_Table*/

select college_id, college_name from College_Table

/*2. Show Top 5 rows from Student table.*/

select top 5 * from Student_Table

/*3. What is the name of professor whose ID is P5*/

select Professor_Name from Professor_Table where Professor_ID = 'P5'

/*4. Convert the name of the Professor into Upper case*/

select UPPER(Professor_name) as Professor_name from Professor_Table

/*5. Show me the names of those students whose name is start with a*/

select Student_Name from Student_Table where Student_Name like 'a%'

/*6. Give the name of those colleges whose end with a*/

select College_Name from College_Table where College_Name like '%a'

/*7. Add one Salary Column in Professor_Table*/

alter table Professor_Table
add Salary decimal(10,2)

UPDATE Professor_Table SET Salary = 70000.00 WHERE Professor_ID = 'P1';
UPDATE Professor_Table SET Salary = 75000.00 WHERE Professor_ID = 'P2';
UPDATE Professor_Table SET Salary = 68000.00 WHERE Professor_ID = 'P3';
UPDATE Professor_Table SET Salary = 72000.00 WHERE Professor_ID = 'P4';
UPDATE Professor_Table SET Salary = 71000.00 WHERE Professor_ID = 'P5';
UPDATE Professor_Table SET Salary = 69000.00 WHERE Professor_ID = 'P6';
UPDATE Professor_Table SET Salary = 78000.00 WHERE Professor_ID = 'P7';
UPDATE Professor_Table SET Salary = 73000.00 WHERE Professor_ID = 'P8';
UPDATE Professor_Table SET Salary = 76000.00 WHERE Professor_ID = 'P9';
UPDATE Professor_Table SET Salary = 80000.00 WHERE Professor_ID = 'P10';

/*8. Add one Contact Column in Student_table*/

alter table Student_Table
add Contact varchar(50) -- email id or Phone number any thing can be added

select distinct Student_ID from Student_Table

UPDATE Student_Table SET Contact = '9112365588' WHERE Student_ID = 'S1';
UPDATE Student_Table SET Contact = '9023312345'WHERE Student_ID = 'S2';
UPDATE Student_Table SET Contact = 'abcde@gmail.com' WHERE Student_ID = 'S3';
UPDATE Student_Table SET Contact = 'zxcvb@yahoo.com' WHERE Student_ID = 'S4';
UPDATE Student_Table SET Contact = '7012356321' WHERE Student_ID = 'S5';
UPDATE Student_Table SET Contact = 'qwerty@gmail.com' WHERE Student_ID = 'S6';
UPDATE Student_Table SET Contact = '1234567890' WHERE Student_ID = 'S7';
UPDATE Student_Table SET Contact = 'quency123@gmail.com' WHERE Student_ID = 'S8';
UPDATE Student_Table SET Contact = 'lost21@gmail.com' WHERE Student_ID = 'S9';
UPDATE Student_Table SET Contact = '0987654321' WHERE Student_ID = 'S10';

-- alter table student_table Rename column Contact to Student_Contact

EXEC sp_rename 'student_table.Contact',  'Student_Contact', 'COLUMN'; 

select * from Student_Table

/*9. Find the total Salary of Professor*/
-- select * from Professor_Table
select sum(salary) as TotalSalary from Professor_Table

/*10. Change datatype of any one column of any one Table
*/
alter table student_table
alter column Student_Stream varchar(200);

-- Task 3:-

/*1. Show first 5 records from Students table and Professor table Combine*/
select * from Student_Table;
select * from Professor_Table;

select st.Student_ID,st.Student_Name, st.Student_Stream, st.Student_contact,
st.Professor_ID, pt.Professor_Name, pt.Professor_Subject
from Student_Table st left join Professor_Table pt 
on st.Professor_ID = pt.Professor_ID

/*2. Apply Inner join on all 4 tables together(Syntax is mandatory)*/

select st.*,pt.*,dt.*,ct.* from Student_Table st 
inner join Professor_Table pt on st.Professor_ID = pt.Professor_ID
inner join Department_Table dt on pt.Dept_ID = dt.Dept_ID
inner join College_Table ct on dt.College_ID = ct.College_ID


/*3. Show Some null values from Department table and Professor table.*/

select * from Professor_Table;
insert into Professor_Table values ('P11','Dr. S Snehal', null , 'D1', '72000.00')

select * from Department_Table
insert into Department_Table values ('D11','Information Technology', 'Tech Lab' , null )

select * from Professor_Table where Professor_Subject IS NULL;
select * from Department_Table where College_ID IS NULL;

/*4. Create a View from College Table and give those records whose college
name starts with C*/

create view CollegeTableStartsWithC  as
select College_ID, College_Name, College_Area from College_Table where College_Name like 'c%'

select * from CollegeTableStartsWithC

/*5. Create Stored Procedure of Professor table whatever customer ID will be
given by user it should show whole records of it.*/

select * from Professor_Table;

create Procedure ProfessorDetails
@professorid varchar(10)
as 
begin
select
* from Professor_Table where Professor_ID = @professorid
end

exec ProfessorDetails 'P1'

/*6. Rename the College_Table to College_Tables_Data .*/

-- alter table College_Table Rename to  College_Tables_Data

sp_rename 'College_Table', 'College_Tables_Data'
-- sp_rename 'College_Tables_Data', 'College_Table'