FROM openjdk:8-jdk-alpine
WORKDIR /
CMD ["ls -ltr"]
CMD ["pwd"]
CMD ["mvn clean install"]
ADD *.jar demo.jar
CMD ["java", "-jar","*.jar"]
