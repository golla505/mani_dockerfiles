# Use an official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
ADD connect-0.0.1-SNAPSHOT.jar connect-0.0.1-SNAPSHOT.jar 

# Expose the port your Spring Boot app runs on
EXPOSE 8082

# Command to run the application
CMD ["java", "-jar", "/app/connect-0.0.1-SNAPSHOT.jar"]
