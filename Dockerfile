# Use lightweight JRE image (not full JDK)
FROM eclipse-temurin:17-jre

# Create app directory
WORKDIR /app

# Copy the generated jar file
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
