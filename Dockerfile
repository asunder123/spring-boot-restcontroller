FROM openjdk:8
CMD mvn clean install
ADD / spring-boot-restcontroller.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","spring-boot-restcontroller.jar"]
