# Spring Boot API Application

This is a Spring Boot REST API application for employee management with H2 in-memory database integration. In this project I've created an interactive functional API using Spring Boot on IDEA IntelliJ IDE.

## Project Structure

- Spring Boot 3.3.3
- Java 17
- H2 In-Memory Database
- JPA / Hibernate
- Maven

## Deployment to Render.com

### Prerequisites

1. A GitHub repository with your code
2. No external database needed - the application uses H2 in-memory database

### Steps to Deploy

1. **Push your code to GitHub**

   Make sure your code is pushed to a GitHub repository.

2. **Create a new Web Service on Render**

   - Go to [Render Dashboard](https://dashboard.render.com/)
   - Click "New" and select "Web Service"
   - Connect your GitHub repository
   - Select "Docker" as the environment
   - Choose the branch to deploy
   - Set a name for your service
   - Select a region and plan
   - Click "Create Web Service"

3. **Configure Environment Variables**

   The application is configured to use H2 in-memory database, so no database-specific environment variables need to be set manually. The following environment variables are already configured in the `render.yaml` file:

   ```
   SPRING_DATASOURCE_URL=jdbc:h2:mem:testdb
   SPRING_DATASOURCE_DRIVERCLASSNAME=org.h2.Driver
   SPRING_DATASOURCE_USERNAME=sa
   SPRING_DATASOURCE_PASSWORD=
   SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.H2Dialect
   SPRING_JPA_HIBERNATE_DDL_AUTO=update
   SPRING_H2_CONSOLE_ENABLED=true
   SPRING_H2_CONSOLE_PATH=/h2-console
   ```

4. **Deploy**

   Render will automatically build and deploy your application using the Dockerfile in your repository.

### Alternative: Using render.yaml

This repository includes a `render.yaml` file that can be used for Blueprint deployments. All necessary environment variables for the H2 database are already configured in the `render.yaml` file.

## Local Development

### Prerequisites

- Java 17
- Maven

### Running Locally

1. Clone the repository
2. Run the application:
   ```
   ./mvnw spring-boot:run
   ```

3. Access the H2 console at http://localhost:8080/h2-console with the following settings:
   - JDBC URL: jdbc:h2:mem:testdb
   - Username: sa
   - Password: (leave empty)
   - Driver Class: org.h2.Driver

## API Endpoints

- GET `/api/v1/employees` - Get all employees
- POST `/api/v1/employees` - Create a new employee
- GET `/api/v1/employees/{id}` - Get employee by ID
- PUT `/api/v1/employees/{id}` - Update employee
- DELETE `/api/v1/employees/{id}` - Delete employee
