FROM openjdk:8
FROM maven:3.3.3-jdk-8
RUN cd /$HOME
ADD $HOME/target/*.jar target/app.jar
EXPOSE 8085
ENTRYPOINT ["target/java","-jar","-Dspring.profiles.active=local","app.jar"]
