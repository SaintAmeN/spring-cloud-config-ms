FROM openjdk:8-jdk

# Add Maintainer Info
LABEL maintainer="p.reclaw@apsystems.tech"

COPY /target/config-ms-0.0.1-SNAPSHOT.jar config-ms.jar

# Make port 8080 available to the world outside this container
EXPOSE 8003

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/config-ms.jar"]