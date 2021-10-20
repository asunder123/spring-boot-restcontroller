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
CMD java -jar /data/*.jar

