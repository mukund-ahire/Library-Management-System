# 📚 Library Management System  

A **Java-based Library Management System** built using **NetBeans** and **MySQL (WAMP Server)**, designed to streamline the management of books, members, borrowing, and returns.  
The system features a clean, user-friendly interface and robust backend to ensure smooth and efficient library operations.  

---

## 🚀 Features  

### 📖 Book Management  
- Add new books  
- Search and update book details  

### 👥 Member Management  
- Register new members  
- View and update member information  

### 🔄 Borrow & Return  
- Issue books to members  
- Process returns and update availability status  

### 📊 Inquiries & Reports  
- Book inquiry  
- Member inquiry  
- Daily activity reports  
- Inquiry tables for quick reference  

### ⚙️ Settings & User Control  
- Logout functionality  
- Admin settings for secure management  

---

## 🖼 System Dashboard  
![Main Menu](https://github.com/mukund-ahire/Library-Management-System/blob/07da1598afef24c618dfd2640567f80e55d54d68/UI/Main%20Menu.png)  

---

## 🛠 Technologies Used  
- **Java** (NetBeans IDE)  
- **MySQL** (WAMP Server – Apache & MySQL)  
- **JDBC** for database connectivity  
- **Swing / JavaFX** for UI components  

---

## 📥 Installation & Setup  

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/mukund-ahire/Library-Management-System.git
   ```

2. **Open in NetBeans**  
   - Go to **File → Open Project**  
   - Select the cloned project folder  

3. **Database Setup**  
   - Start **WAMP Server**  
   - Open `http://localhost/phpmyadmin`  
   - Create a new database (e.g., `library_db`)  
   - Import `database/library.sql`  

4. **Configure Database Connection**  
   In your Java connection file, update the database credentials:  
   ```java
   String url = "jdbc:mysql://localhost/library_db";
   String user = "root";
   String pass = "";
   ```

5. **Run the Project**  
   - Build and run the project from **NetBeans**  

---

## 📸 Screenshots  

**Login Screen**  
![Login](https://github.com/mukund-ahire/Library-Management-System/blob/33212cbd5a4331c5a2014cbced71608c5194c362/UI/Login.png)  

**Inquiry Panel**  
![Inquiry](https://github.com/mukund-ahire/Library-Management-System/blob/33212cbd5a4331c5a2014cbced71608c5194c362/UI/Inquiry.png)  

**Daily Report**  
![Daily Report](https://github.com/mukund-ahire/Library-Management-System/blob/33212cbd5a4331c5a2014cbced71608c5194c362/UI/Daily%20report.png)  

**Book Management**  
![Books](https://github.com/mukund-ahire/Library-Management-System/blob/33212cbd5a4331c5a2014cbced71608c5194c362/UI/Books.png)  

**Member Management**  
![Members](https://github.com/mukund-ahire/Library-Management-System/blob/33212cbd5a4331c5a2014cbced71608c5194c362/UI/Members.png)  

---

## 🔄 Future Enhancements  
Currently, work is in progress to:  
- **Enhance the UI** with a modern, visually appealing design  
- **Integrate AI capabilities** for smart search, predictive recommendations, and automated insights  
