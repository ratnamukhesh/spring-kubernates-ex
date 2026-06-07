# Use an official OpenJDK image as the base image
FROM amazoncorretto:21-alpine-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY build/libs/demo-0.0.1-SNAPSHOT.jar springboot-eks.jar

# Expose the port on which your app will run (default for Spring Boot is 8080)
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "springboot-eks.jar"]
