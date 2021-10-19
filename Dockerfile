
FROM openjdk:8-jdk
COPY build/libs/*.jar /app/service.jar
CMD ["java", "-jar", "/app/service.jar"]
EXPOSE 8084
