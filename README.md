# University-Database-Management-System

**![image](https://github.com/user-attachments/assets/41c226cf-519c-4f63-9a06-0a3fdd2583f6)
Project Overview**

This SQL project models a database for Bharati Vidyapeeth University, featuring core tables to organize and manage data for colleges, departments, professors, and students. It demonstrates a complete schema setup with relationships, constraints, and basic CRUD operations along with queries for analysis and transformation.

**![image](https://github.com/user-attachments/assets/5451b1a1-f5be-4c10-aaeb-a493c868548d)
Database Schema and Relationships**

_**Schema:**_

![University DataBase Management Schema](https://github.com/user-attachments/assets/15119b83-7d13-49a7-a692-76d54ef5f83f)


_**Tables:**_

1. College_Table: Stores college details with columns for College ID, Name, and Area.
2. Department_Table: Contains Department ID, Name, Facility, and a foreign key reference to College ID, establishing a link with College_Table.
3. Professor_Table: Records professor details with a primary key on Professor ID, and foreign key linking to Department_Table.
4. Student_Table: Manages student information with a primary key on Student ID and a foreign key linking to Professor ID, establishing advisor relationships between students and professors.

_**Foreign Key Constraints:**_

1. Each department is linked to a college via College_ID.
2. Each professor belongs to a department, linked via Dept_ID.
3. Each student has an advisor, linked to a professor by Professor_ID.

**![image](https://github.com/user-attachments/assets/e9e553f5-90df-4b27-a147-885cca22116f)
Key Functionalities and Queries**

_**Data Manipulation:**_

1. Inserted sample data across all tables to simulate a populated university database.
2. Added columns (e.g., Salary in Professor_Table and Contact in Student_Table) to showcase SQL ALTER table functionality.
3. Renamed columns and tables dynamically.

_**Data Analysis Queries:**_

1. Extracted specific data (e.g., total salary of professors, filtered data by specific conditions).
2. Created views to filter records, such as colleges starting with specific characters.
3. Employed aggregate functions and UPPER case transformations.

**![image](https://github.com/user-attachments/assets/e9a30a14-f881-4579-8800-bdf1e150751e)
Advanced SQL Operations:**

1. Created a Stored Procedure to retrieve professor details based on a user-provided Professor_ID.
2. Developed JOIN queries across tables to display related data for complex queries.
3. Inserted records with NULL values to demonstrate handling and selection of incomplete data.
