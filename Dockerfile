FROM openjdk:8-jdk-alpine
CMD java -classpath src/main/java/es/macero dev.SpringBootRestcontrollerExampleApplication
CMD javac -d ./build src/main/java/es/macero/dev/SpringBootRestcontrollerExampleApplication.java
CMD jar cvf demo.jar *
CMD ["java","-jar","demo.jar"]
EXPOSE 8085
