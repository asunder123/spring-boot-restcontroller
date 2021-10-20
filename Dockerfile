FROM openjdk:8-jdk-alpine
CMD java -classpath src/main/java/es/macero dev.SpringBootRestcontrollerExampleApplication
CMD ["java","-jar",*.jar]
EXPOSE 8085
