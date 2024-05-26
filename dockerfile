# Use a base image with the JRE pre-installed
FROM openjdk
  
# Set the working directory in the container
WORKDIR /app

# Copy the executable jar file into the container at /app
COPY admin-server/target/target/admin-server-2.2.4.jar /app/admin-server-2.2.4.jar
  
# Set the entry point for the container to run your application
CMD ["java", "-jar", "admin-server-2.2.4.jar"]
