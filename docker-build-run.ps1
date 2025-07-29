# PowerShell script to build and run the Docker container locally

# Build the Docker image
Write-Host "Building Docker image..."
docker build -t spring-api .

# Run the container
Write-Host "Running Docker container..."
docker run -p 8080:8080 \
  -e "SPRING_DATASOURCE_URL=jdbc:mysql://host.docker.internal:3306/ems?useSSL=false" \
  -e "SPRING_DATASOURCE_USERNAME=root" \
  -e "SPRING_DATASOURCE_PASSWORD=dev@31" \
  -e "SPRING_JPA_HIBERNATE_DDL_AUTO=update" \
  -e "SPRING_JPA_PROPERTIES_HIBERNATE_DIALECT=org.hibernate.dialect.MySQL5InnoDBDialect" \
  spring-api

Write-Host "Container is running. Access the API at http://localhost:8080/api/v1/employees"