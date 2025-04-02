Vehicle Breakdown Support System

This is a Vehicle Breakdown Emergency Support System built using Spring Boot, JSP, Servlets, and JDBC. It allows users to register, log in, and submit breakdown requests while enabling admins to manage and update request statuses.

Features

User Features:

User Registration & Login (Session-based authentication)

Submit Breakdown Requests (Enter vehicle details, location, and issue)

View Submitted Requests (Check status updates on previous requests)

Admin Features:

View Breakdown Requests (See requests submitted by users)

Update Request Status (Mark as Pending, In Progress, or Resolved)

Technologies Used

Spring Boot

JSP & Servlets

JDBC & PostgreSQL (Database connectivity)

HTML, CSS, JavaScript (Frontend UI)

Apache Tomcat (Embedded in Spring Boot)

Maven (Dependency Management)

Installation & Setup

Prerequisites:

Java JDK (17 or higher)

Apache Tomcat (Embedded in Spring Boot)

PostgreSQL Database

Spring Tool Suite (STS) / Eclipse

Steps:

Import Project in STS/Eclipse:

Open Spring Tool Suite (STS) or Eclipse and import as a Maven/Java EE project.

Configure Database:

Create a PostgreSQL database and update database credentials in application.properties.

Run the Project:

Execute the application using the mvn spring-boot:run command or run the main class in STS.

Access the System:

User login: http://localhost:8080/

Admin dashboard: http://localhost:8080/admin/dashboard

Folder Structure

myvehiclebreakdownproject [boot] [devtools]
│── src/main/java
│   ├── com.vechicle.breakdown
│   │   ├── controller
│   │   ├── exception
│   │   ├── model
│   │   ├── repository
│   │   ├── service
│── src/main/resources
│── src/test/java
│── src/test/resources
│── JRE System Library [JavaSE-17]
│── Maven Dependencies
│── target/generated-sources/annotations
│── target/generated-test-sources/test-annotations
│── src
│── target



Contributing

Feel free to fork this repository and contribute! If you find issues, submit a pull request.

License

This project is open-source and available under the MIT License.

