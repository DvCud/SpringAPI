# PowerShell script to build and run the Docker container locally

# Build the Docker image
Write-Host "Building Docker image..."
docker build -t spring-api .

# Run the container
Write-Host "Running Docker container..."
docker run -p 8080:8080 \
  -e "SPRING_DATASOURCE_URL=jdbc:h2:mem:testdb" \
  -e "SPRING_DATASOURCE_DRIVERCLASSNAME=org.h2.Driver" \
  -e "SPRING_DATASOURCE_USERNAME=sa" \
  -e "SPRING_DATASOURCE_PASSWORD=" \
  -e "SPRING_JPA_DATABASE_PLATFORM=org.hibernate.dialect.H2Dialect" \
  -e "SPRING_JPA_HIBERNATE_DDL_AUTO=update" \
  -e "SPRING_H2_CONSOLE_ENABLED=true" \
  -e "SPRING_H2_CONSOLE_PATH=/h2-console" \
  spring-api

Write-Host "Container is running. Access the API at http://localhost:8080/api/v1/employees"