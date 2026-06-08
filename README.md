# 📚 Multi-Branch Library Management System (Delhi)

[![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=flat-square\&logo=mysql\&logoColor=white)](https://www.mysql.com/)
[![SQL](https://img.shields.io/badge/SQL-DDL%20%7C%20DML-orange?style=flat-square)]()
[![DBMS](https://img.shields.io/badge/DBMS-Project-success?style=flat-square)]()
[![Normalization](https://img.shields.io/badge/BCNF-Normalized-blue?style=flat-square)]()
[![ER%20Modeling](https://img.shields.io/badge/ER-Modeling-purple?style=flat-square)]()
[![License](https://img.shields.io/badge/Academic-Project-green?style=flat-square)]()

> 🚀 A centralized Database Management System designed to manage multiple library branches, book inventories, members, employees, and borrowing transactions across Delhi.

---

## 📌 Overview

The **Multi-Branch Library Management System** is a relational database project that addresses challenges faced by decentralized library systems operating across multiple locations.

The system provides a centralized platform to manage:

* 📚 Books and Book Copies
* 🏢 Library Branches
* 👥 Members
* 👨‍💼 Employees
* ✍️ Authors
* 🏛 Publishers
* 🔄 Issue & Return Transactions

The project focuses on database design principles, normalization, entity relationship modeling, referential integrity, and SQL query implementation.

---

## 📋 Table of Contents

* Features
* Problem Statement
* Motivation
* System Architecture
* Database Design
* ER Diagram
* Relational Schema
* Normalization
* Technologies Used
* SQL Implementation
* Query Analysis
* Repository Structure
* Challenges Faced
* Learning Outcomes
* Future Improvements
* Authors

---

## ✨ Features

### 📚 Book Management

* ISBN-based unique book identification
* Multiple copies of the same book
* Branch-wise inventory tracking
* Real-time availability status

### 🏢 Multi-Branch Support

* Centralized management of library branches
* Independent branch inventories
* Shared member access across branches

### 👥 Member Management

* Unique member registration
* Borrowing history tracking
* Membership categorization

### 👨‍💼 Employee Management

* Branch-wise employee assignment
* Transaction processing
* Staff responsibility tracking

### 🔄 Issue & Return System

* Issue records management
* Due date tracking
* Return status monitoring
* Complete borrowing history

### ✍️ Author & Publisher Management

* Many-to-Many Author–Book relationship
* Publisher catalog management
* Structured book metadata

---

## 🎯 Problem Statement

Delhi has a large network of libraries operating across multiple branches. Managing inventories, employees, and member records separately leads to:

* ❌ Data redundancy
* ❌ Inconsistent records
* ❌ Difficult inventory tracking
* ❌ Poor coordination between branches
* ❌ Limited visibility into book availability

The objective of this project is to design a centralized DBMS that eliminates these issues through a structured relational database.

---

## 💡 Motivation

Real-world library systems require:

* Efficient inventory management
* Cross-branch coordination
* Reliable transaction tracking
* Consistent data storage
* Scalable database architecture

This project was developed to apply core DBMS concepts to a practical problem involving multiple entities and complex relationships.

---

## 🏗 System Architecture

```text
Library Branch
      │
      ├── Employees
      │
      ├── Book Copies
      │
      ▼

Books ─── Authors
  │
  ▼
Publishers

Members ── Issue Records ── Book Copies
                 │
                 ▼
             Employees
```

---

## 🧠 Database Design

### Core Entities

| Entity         | Description                    |
| -------------- | ------------------------------ |
| Library_Branch | Stores branch information      |
| Book           | Stores book metadata           |
| Book_Copy      | Tracks physical copies         |
| Author         | Stores author details          |
| Publisher      | Stores publisher information   |
| Member         | Library members                |
| Employee       | Library staff                  |
| Issue_Record   | Book issue/return transactions |

---

## 📊 ER Diagram

The system is modeled using **Chen ER Notation**.

### Key Relationships

| Relationship                  | Cardinality |
| ----------------------------- | ----------- |
| Branch → Employee             | 1:N         |
| Branch → Book_Copy            | 1:N         |
| Book → Book_Copy              | 1:N         |
| Book → Publisher              | N:1         |
| Book ↔ Author                 | M:N         |
| Member ↔ Employee ↔ Book_Copy | Ternary     |

---

## 🗂 Relational Schema

### Tables

* Library_Branch
* Publisher
* Book
* Author
* Book_Author
* Employee
* Member
* Book_Copy
* Issue_Record


---

## 🔄 Normalization

The database was normalized to eliminate redundancy and maintain data consistency.

### Normal Forms Applied

✅ First Normal Form (1NF)

* Atomic attributes
* No repeating groups

✅ Second Normal Form (2NF)

* No partial dependencies
* Composite key relations properly structured

✅ Third Normal Form (3NF)

* No transitive dependencies
* Publisher data separated from Book relation

✅ Boyce-Codd Normal Form (BCNF)

* Every determinant is a candidate key
* All relations satisfy BCNF requirements

### Benefits

* Reduced redundancy
* Improved consistency
* Elimination of anomalies
* Better maintainability

---

## 🛠 Technologies Used

### Database

* MySQL
* SQL

### Design Tools

* Draw.io
* dbdiagram.io

### Concepts Applied

* ER Modeling
* Relational Schema Mapping
* Normalization
* Functional Dependencies
* Referential Integrity
* SQL Joins
* Aggregation Queries

---

## 💻 SQL Implementation

Implemented using:

### DDL Operations

* CREATE DATABASE
* CREATE TABLE
* PRIMARY KEY Constraints
* FOREIGN KEY Constraints

### DML Operations

* INSERT
* UPDATE
* DELETE

### Query Operations

* JOIN
* GROUP BY
* HAVING
* Aggregate Functions
* Multi-table Queries

---

## 📈 Query Analysis

Sample queries implemented:

### Books with Publisher Names

```sql
SELECT b.Title, p.Publisher_Name
FROM Book b
JOIN Publisher p
ON b.Publisher_ID = p.Publisher_ID;
```

### Available Books by Branch

```sql
SELECT lb.Branch_Name, b.Title
FROM Book_Copy bc
JOIN Library_Branch lb
ON bc.Branch_ID = lb.Branch_ID
JOIN Book b
ON bc.ISBN = b.ISBN
WHERE bc.Status = 'Available';
```

### Members with Pending Returns

```sql
SELECT m.Name, b.Title
FROM Issue_Record i
JOIN Member m
ON i.Member_ID = m.Member_ID
JOIN Book_Copy bc
ON i.Copy_ID = bc.Copy_ID
JOIN Book b
ON bc.ISBN = b.ISBN
WHERE i.Return_Date IS NULL;
```

---

## 📂 Repository Structure

```text
multi-branch-library-management-system/
│
├── README.md
│
├── SQL/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── queries.sql
│
├── ER_Diagram/
│   ├── er_diagram.png
│   └── relational_schema.png
│
├── Documentation/
│   └── DBMS_Project_Report.pdf
│
└── Screenshots/
    ├── table_outputs.png
    ├── query_results.png
    └── implementation.png
```

---

## ⚠️ Challenges Faced

### Complex Relationship Modeling

* Author ↔ Book (Many-to-Many)
* Member ↔ Employee ↔ Book_Copy (Ternary)

### Multi-Branch Inventory Tracking

* Same book available in multiple branches
* Separate tracking of physical copies

### Data Consistency

* Eliminating redundancy
* Maintaining referential integrity

### Normalization

* Converting ER model to relational schema
* Achieving BCNF compliance

---

## 📚 Learning Outcomes

Through this project, we gained practical experience in:

* Database Design
* ER Modeling
* Relational Schema Mapping
* SQL Query Writing
* Normalization (1NF → BCNF)
* Functional Dependency Analysis
* Database Implementation in MySQL
* Real-world Data Modeling

---

## 🚀 Future Improvements

* Web-based Library Portal
* Role-Based Authentication
* Fine Calculation Automation
* Online Reservation System
* Branch Performance Analytics
* REST API Integration
* Cloud Database Deployment

---

## 👨‍💻 Authors

**Hriday Shah**

⭐ If you found this project useful, consider giving the repository a star.
