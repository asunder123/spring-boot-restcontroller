FROM openjdk:8-jdk-alpine
WORKDIR /
CMD cd /var/lib/target
COPY target/*.jar spring-boot-restcontroller-0.0.1.jar
ENTRYPOINT ["java","-jar","/spring-boot-restcontroller-0.0.1.jar"]
