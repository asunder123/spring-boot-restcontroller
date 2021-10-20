FROM openjdk:8
FROM maven:3.3.3-jdk-8
ADD *.jar target/app.jar
RUN bash -c 'touch target/app.jar'
EXPOSE 8085
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=local","target/app.jar"]
