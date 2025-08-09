# 📚 Library Management System

A Java-based Library Management System developed using *NetBeans* and *MySQL (WAMP Server)*.  
This application helps manage books, members, borrowing, and returns efficiently through a clean and user-friendly interface.

---

## 🚀 Features
- *Book Management*
  - Add new books
  - Search and update book details
- *Member Management*
  - Register new members
  - View and update member details
- *Borrow & Return*
  - Issue books to members
  - Return and update status
- *Inquiries & Reports*
  - Book inquiry
  - Member inquiry
  - Daily reports
  - Inquiry tables
- *Settings & User Control*
  - Logout
  - Admin settings

---

## 🖼 System Dashboard
 <img width="1041" height="502" alt="Main Menu" src="https://github.com/mukund-ahire/Library-Management-System/blob/07da1598afef24c618dfd2640567f80e55d54d68/UI/Main%20Menu.png" />


---

## 🛠 Technologies Used
- *Java (Intellij IDEA IDE)*
- *MySQL (Apache Server)*
- *JDBC* for database connectivity
- *Swing / JavaFX* for user interface (depending on your setup)

---


## 📥 Installation & Setup
1. **Clone the repository**
   bash
   git clone https://github.com/mukund-ahire/Library-Management-System.git

2. **Open in NetBeans**

   * Go to File → Open Project → Select the project folder.

3. **Database Setup**

   * Start WAMP Server.
   * Open `http://localhost/phpmyadmin`.
   * Create a new database (e.g., `library_db`).
   * Import `database/library.sql`.

4. **Configure Database Connection**
   Update your DB connection settings in the Java file:

```java
   String url = "jdbc:mysql://localhost/library_db";
   String user = root;
   String pass = "";
```
5. **Run the Project**

   * Build and run the project in the Intellij IDEA

---

## 📸 More Screenshots


<img width="979" height="545" alt="Login" src="" />

---

<img width="1235" height="665" alt="Inquiry" src="" />

---

<img width="1123" height="661" alt="Daily report" src="" />

---

<img width="1183" height="621" alt="Books" src="" />

---

<img width="1296" height="670" alt="Members" src="" />
