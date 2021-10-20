FROM openjdk:8
FROM maven:3.3.3-jdk-8
CMD mvn clean install
ADD / *.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","*.jar"]
