FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
ENTRYPOINT ["java"]
CMD java -cp bin dev.SpringBootRestcontrollerExampleApplication
CMD ["-jar",*.jar]
EXPOSE 8085
