FROM openjdk:8-jdk-alpine
WORKDIR /
COPY target/spring-boot-restcontroller-0.0.1.jar spring-boot-restcontroller-0.0.1.jar
ENTRYPOINT ["java","-jar","/spring-boot-restcontroller-0.0.1.jar"]
