FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} spring-boot-restcontroller.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /spring-boot-restcontroller.jar"]
