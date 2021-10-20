FROM openjdk:8-jdk-alpine
WORKDIR /
CMD ["ls -ltr"]
CMD ["pwd"]
CMD ["mvn clean install"]
ADD /var/lib/docker/tmp/buildkit-mount511677196/target/*.jar demo.jar
CMD ["java", "-jar","demo.jar"]
EXPOSE 8085
