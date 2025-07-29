# Spring Boot API Application

This is a Spring Boot REST API application for employee management with MySQL database integration.

## Project Structure

- Spring Boot 3.3.3
- Java 17
- MySQL Database
- JPA / Hibernate
- Maven

## Deployment to Render.com

### Prerequisites

1. A GitHub repository with your code
2. A MySQL database (you can use Render's PostgreSQL or an external MySQL service)

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

   In the Render dashboard for your service, go to the "Environment" tab and add the following environment variables:

   ```
   SPRING_DATASOURCE_URL=jdbc:mysql://your-mysql-host:3306/ems?useSSL=false
   SPRING_DATASOURCE_USERNAME=your_mysql_username
   SPRING_DATASOURCE_PASSWORD=your_mysql_password
   SPRING_JPA_HIBERNATE_DDL_AUTO=update
   SPRING_JPA_PROPERTIES_HIBERNATE_DIALECT=org.hibernate.dialect.MySQL5InnoDBDialect
   ```

   Replace the values with your actual MySQL connection details.

4. **Deploy**

   Render will automatically build and deploy your application using the Dockerfile in your repository.

### Alternative: Using render.yaml

This repository includes a `render.yaml` file that can be used for Blueprint deployments. You'll still need to configure your database environment variables in the Render dashboard.

## Local Development

### Prerequisites

- Java 17
- Maven
- MySQL

### Running Locally

1. Clone the repository
2. Configure MySQL connection in `src/main/resources/application.properties`
3. Run the application:
   ```
   ./mvnw spring-boot:run
   ```

## API Endpoints

- GET `/api/v1/employees` - Get all employees
- POST `/api/v1/employees` - Create a new employee
- GET `/api/v1/employees/{id}` - Get employee by ID
- PUT `/api/v1/employees/{id}` - Update employee
- DELETE `/api/v1/employees/{id}` - Delete employee