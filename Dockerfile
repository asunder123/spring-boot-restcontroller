FROM maven:3.6.3-open-jdk-11-slim AS BUILDER
ARG VERSION=0.0.1-VERSION
WORKDIR /build/
COPY pom.xml /build/
COPY src /build/src/

RUN mvn clean package
COPY target/spring-boot-restcontroller-${VERSION}.jar target/app.jar

FROM openjdk: 11.0.11-jre-slim
WORKDIR /app/

COPY --from=BUILDER /build/target/app.jar /app/
CMD java -jar /app/app.jar


