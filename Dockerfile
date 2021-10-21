FROM openjdk:8-jdk
FROM maven:3.5.2-jdk-8
#FROM maven:3.6.3-open-jdk-11-slim AS BUILDER
COPY src/main/java/es/macero/dev/ .
COPY pom.xml .
#RUN mvn clean package
RUN javac SpringBootRestcontrollerExampleApplication.java
EXPOSE 8085
CMD ["java", "SpringBootRestcontrollerExampleApplication"]
