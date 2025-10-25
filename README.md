# Servlet_And_JSP
Here, I’m sharing my own  backend knowledge and experience on how to make simple or build application.

# Registration Page( 1 Program )
# JDBC + Servlet Project (Local MySQL / DBMS)

> This project demonstrates how to connect a Java Servlet to a **local MySQL database (DBMS)** using **JDBC**.  
> It performs basic Add user data 
> Project created by Ritik — for learning JDBC, Servlets, and database integration.

---

## ⚙️ Technologies Used
- **Java (JDK 17+)**
- **Apache Tomcat 10+**
- **MySQL (Local DBMS / XAMPP / MySQL Workbench)**
- **JDBC**
- **JSP / HTML / CSS (for frontend)**

---

## 🧩 Project Overview
- Backend: Java Servlets handle HTTP requests and responses.
- Database: Local MySQL server running on `localhost:3306`.
- Connectivity: JDBC API (`java.sql` package). jar 8.0.11
- Features implemented:
  - User registration form (Insert data)
  - Registration validation (Select query)
  - Display / Fetch records from DB
  - Basic error handling

---

## 🗃️ Database Setup (Local MySQL)
1. Open  **MySQL Workbench CommandLine**.
2. Create a new database (example name: `student_db`):
   ```sql
   CREATE DATABASE student_db;
   USE student_db;
   CREATE TABLE student (
       name VARCHAR(100),
       email VARCHAR(100),
       password VARCHAR(100),
       gender VARCHAR(100),
       city VARCHAR(100)
   );
* -------------------------------------------------------------------------------------------------------------------------------------------- *
