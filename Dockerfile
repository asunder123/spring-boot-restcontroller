FROM openjdk:8-jdk-alpine
CMD java -classpath src/main/java/es/macero dev.SpringBootRestcontrollerExampleApplication
CMD jar cvf demo.jar *
CMD ["java","-jar",*.jar]
EXPOSE 8085
