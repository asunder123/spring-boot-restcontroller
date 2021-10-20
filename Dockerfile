FROM maven:3.6.3-openjdk-11 AS maven_build

COPY pom.xml /tmp/

COPY src /tmp/src/

WORKDIR /tmp/

RUN mvn package

#pull base image

FROM openjdk

#maintainer 
MAINTAINER anand.sunder@capgemini.com
#expose port 8086
EXPOSE 8085

#default command
CMD java -jar /target/spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar

#copy hello world to docker image from builder image

COPY --from=maven_build /tmp/target/spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar /data/spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar
