FROM openjdk:8-jdk
WORKDIR /opt/java
CMD wget --user=admin --password=admin123 http://192.168.144.1:8081/repository/maven-releases/es/macero/dev/spring-boot-restcontroller-example/3.3.3/spring-boot-restcontroller-example-3.3.3-debug.jar
#ADD http://localhost:8081/#browse/browse:maven-releases:es%2Fmacero%2Fdev%2Fspring-boot-restcontroller-example%2F3.3.3%2Fspring-boot-restcontroller-example-3.3.3-debug.jar SpringBootRestcontrollerExampleApplication.jar
EXPOSE 8085
CMD ["java", "-jar","spring-boot-restcontroller-example-3.3.3-debug.jar"]
