FROM openjdk:8-jdk-alpine
WORKDIR /

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN sudo ./mvnw dependency:go-offline

COPY src ./src

CMD ["sudo","./mvnw", "spring-boot:run"]
