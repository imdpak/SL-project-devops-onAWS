# Use lightweight Java runtime
FROM eclipse-temurin:17-jre-alpine

# Create app directory
WORKDIR /app

# Copy jar into container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run application
ENTRYPOINT ["java","-jar","app.jar"]
