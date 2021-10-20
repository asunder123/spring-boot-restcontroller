FROM openjdk:8-jdk-alpine
WORKDIR /
CMD ["ls -ltr"]
CMD ["pwd"]
CMD ["mvn clean install"]
ADD */spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar demo.jar
CMD ["java", "-jar","demo.jar"]
