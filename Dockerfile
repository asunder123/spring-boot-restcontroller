FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
ENTRYPOINT ["java"]
RUN javac src/java/main/es/macero/dev/SpringBootRestcontrollerExampleApplication.java -d bin
CMD ["-jar",*.jar]
EXPOSE 8085
