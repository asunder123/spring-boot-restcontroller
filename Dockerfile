FROM openjdk:8
FROM maven:3.3.3-jdk-8
ADD / app.jar
CMD mvn clean install
CMD ls -ltr
EXPOSE 8085
ENTRYPOINT ["java","-jar","app.jar"]
