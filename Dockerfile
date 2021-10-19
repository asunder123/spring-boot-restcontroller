FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} /opt/app.jar
ENTRYPOINT ["java"]
CMD ["-jar","/opt/app.jar"]
EXPOSE 8085
