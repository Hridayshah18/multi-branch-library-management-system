Creating Database:
CREATE DATABASE IF NOT EXISTS lib_management_db ;
USE lib_management_db;
Creating Tables:
CREATE TABLE Library_Branch (
Branch_ID INT PRIMARY KEY,
Branch_Name VARCHAR(100),
Branch_Address VARCHAR(255),
Location VARCHAR(100),
Contact_Number VARCHAR(15),
Email_ID VARCHAR(100)
);
CREATE TABLE Publisher (
Publisher_ID INT PRIMARY KEY,
Publisher_Name VARCHAR(100),
Publisher_Address VARCHAR(255),
Contact_Number VARCHAR(15)
);
CREATE TABLE Book (
ISBN VARCHAR(20) PRIMARY KEY,
Title VARCHAR(255),
Publication_Year INT,
Publisher_ID INT,
FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID)
);
CREATE TABLE Author (
Author_ID INT PRIMARY KEY,
Author_Name VARCHAR(100),
Date_of_Birth DATE,
Nationality VARCHAR(50)
);
CREATE TABLE Book_Author (
ISBN VARCHAR(20),
Author_ID INT,
PRIMARY KEY (ISBN, Author_ID),
FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
);
CREATE TABLE Employee (
Employee_ID INT PRIMARY KEY,
Name VARCHAR(100),
Phone_Number VARCHAR(15),
Address VARCHAR(255),
Employee_Type VARCHAR(50),
Branch_ID INT,
FOREIGN KEY (Branch_ID) REFERENCES Library_Branch(Branch_ID)
);
CREATE TABLE Member (
Member_ID INT PRIMARY KEY,
Name VARCHAR(100),
Phone_Number VARCHAR(15),
Email_ID VARCHAR(100),
Address VARCHAR(255),
Membership_Type VARCHAR(50),
Membership_Date DATE
);
CREATE TABLE Book_Copy (
Copy_ID INT PRIMARY KEY,
Status VARCHAR(20),
Acquisition_ID INT,
ISBN VARCHAR(20),
Branch_ID INT,
FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
FOREIGN KEY (Branch_ID) REFERENCES Library_Branch(Branch_ID)
);
CREATE TABLE Issue_Record (
Issue_ID INT PRIMARY KEY,
Issue_Date DATE,
Due_Date DATE,
Return_Date DATE,
Member_ID INT,
Employee_ID INT,
Copy_ID INT,
FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
FOREIGN KEY (Copy_ID) REFERENCES Book_Copy(Copy_ID)
);