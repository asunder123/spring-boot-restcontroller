FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
ENTRYPOINT ["java"]
CMD java -classpath src/main/java/es/macero dev.SpringBootRestcontrollerExampleApplication
CMD ["java","-jar",*.jar]
EXPOSE 8085
