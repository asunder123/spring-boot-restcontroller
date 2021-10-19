FROM ubuntu:18.04
ADD *.jar /
EXPOSE 8085
FROM openjdk:8
EXPOSE 8084	
CMD java -jar *.jar
