# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file from the build context into the container
COPY ./build/libs/backend-0.0.1-SNAPSHOT.jar /app/backend.jar

# Command to run the application
CMD ["java", "-jar", "/app/backend.jar"]
