# Flight Booking System

A web-based Flight Booking System built using Java Servlets and JSPs. The application implements authentication and authorization for users using Tomcat Roles. The web-application is also secured against SQL Injection and Cross-Site Scripting attacks.

## Repository
- GitHub: [https://github.com/smiley-victim/Flight-booking.git](https://github.com/smiley-victim/Flight-booking.git)

## Features

- User Authentication and Authorization
- Flight Search and Booking
- Seat Selection
- Admin Panel for Flight Management
- Security against SQL Injection and XSS attacks

## Technologies Used

- Java Servlets
- JSP (JavaServer Pages)
- MySQL Database
- HTML/CSS
- JavaScript
- Tomcat Server
- Bootstrap 4 for UI

## Prerequisites

- Java JDK 8 or higher
- Apache Tomcat 8.5 or higher
- MySQL Database 5.7 or higher
- NetBeans IDE (recommended)
- Git (for cloning the repository)

## Detailed Setup Instructions

1. **Environment Setup**:
   ```bash
   # Install Java JDK
   sudo apt-get update
   sudo apt-get install openjdk-8-jdk

   # Install MySQL
   sudo apt-get install mysql-server

   # Install Tomcat
   sudo apt-get install tomcat8
   ```

2. **Database Setup**:
   ```bash
   # Login to MySQL
   mysql -u root -p

   # Create database and user
   CREATE DATABASE flight_booking;
   CREATE USER 'flight_user'@'localhost' IDENTIFIED BY 'flight_password';
   GRANT ALL PRIVILEGES ON flight_booking.* TO 'flight_user'@'localhost';
   FLUSH PRIVILEGES;

   # Import schema
   mysql -u flight_user -p flight_booking < Project/FlightBookingSystem/database/flight_booking.sql
   ```

3. **Project Setup**:
   - Clone the repository:
     ```bash
     git clone https://github.com/smiley-victim/Flight-booking.git
     cd Flight-booking
     ```
   - Open the project in NetBeans IDE
   - Configure the database connection in `Project/FlightBookingSystem/src/java/models/FBS.java`:
     ```java
     private static final String DB_URL = "jdbc:mysql://localhost:3306/flight_booking";
     private static final String DB_USER = "flight_user";
     private static final String DB_PASS = "flight_password";
     ```

4. **Tomcat Configuration**:
   - Edit `/etc/tomcat8/tomcat-users.xml`:
     ```xml
     <role rolename="Manager"/>
     <role rolename="Admin"/>
     <role rolename="Customer"/>
     <user username="admin@admin.com" password="admin" roles="Admin"/>
     <user username="manager@manager.com" password="manager" roles="Manager"/>
     <user username="customer@customer.com" password="customer" roles="Customer"/>
     ```
   - Restart Tomcat:
     ```bash
     sudo systemctl restart tomcat8
     ```

5. **Building and Deploying**:
   - In NetBeans:
     1. Right-click on the project
     2. Select "Clean and Build"
     3. Select "Deploy"
   - Or manually:
     ```bash
     # Build WAR file
     cd Project/FlightBookingSystem
     ant build
     
     # Deploy to Tomcat
     sudo cp dist/FlightBookingSystem.war /var/lib/tomcat8/webapps/
     ```

6. **Accessing the Application**:
   - Open web browser
   - Navigate to: `http://localhost:8080/FlightBookingSystem`
   - Use default credentials to login:
     - Admin: admin@admin.com / admin
     - Manager: manager@manager.com / manager
     - Customer: customer@customer.com / customer

## Project Structure

```
FlightBookingSystem/
├── src/
│   └── java/
│       ├── controllers/    # Servlet controllers
│       ├── models/        # Data models and database
│       └── utils/         # Utility classes
├── web/
│   ├── assets/           # Static resources
│   ├── Templates/        # JSP templates
│   └── WEB-INF/         # Configuration files
└── database/            # Database scripts
```

## Common Issues and Solutions

1. **Database Connection Issues**:
   - Error: "Access denied for user"
     - Solution: Verify database credentials and permissions
   - Error: "Unknown database"
     - Solution: Create database and import schema
   - Error: "Connection refused"
     - Solution: Check if MySQL service is running

2. **Tomcat Deployment Issues**:
   - Error: "404 Not Found"
     - Solution: Check WAR file deployment
   - Error: "Port 8080 in use"
     - Solution: Change Tomcat port or free up 8080
   - Error: "Class not found"
     - Solution: Check classpath and dependencies

3. **Login Issues**:
   - Error: "Invalid credentials"
     - Solution: Verify tomcat-users.xml configuration
   - Error: "Role not found"
     - Solution: Add missing roles to tomcat-users.xml

4. **Build Issues**:
   - Error: "Build failed"
     - Solution: Check Java version and dependencies
   - Error: "Missing dependencies"
     - Solution: Add required JAR files to classpath

## Security Considerations

1. **Database Security**:
   - Use strong passwords
   - Limit database user privileges
   - Enable SSL for database connections

2. **Application Security**:
   - Keep Tomcat updated
   - Use HTTPS in production
   - Regularly backup database

3. **User Security**:
   - Change default passwords
   - Implement password policies
   - Enable session timeout

## Support

For issues and feature requests, please create an issue in the repository.




