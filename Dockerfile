FROM openjdk:8
FROM maven:3.3.3-jdk-8
RUN mvn package
CMD mvn clean install
ADD / app.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","app.jar"]
