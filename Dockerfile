FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
ENTRYPOINT ["java"]
CMD ["-jar","{JAR_FILE}"]
EXPOSE 8085
