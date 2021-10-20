FROM openjdk:8
CMD "mvn clean install"
ADD target/spring-boot-restcontroller.jar spring-boot-restcontroller.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","spring-boot-restcontroller.jar"]
