FROM openjdk:8-jdk
WORKDIR /opt/java
ADD http://localhost:8081/#browse/browse:maven-releases:es%2Fmacero%2Fdev%2Fspring-boot-restcontroller-example%2F3.3.3%2Fspring-boot-restcontroller-example-3.3.3-debug.jar SpringBootRestcontrollerExampleApplication.jar
EXPOSE 8085
CMD ["java", "-jar","SpringBootRestcontrollerExampleApplication.jar"]
