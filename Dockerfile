FROM java:8
WORKDIR /
ADD spring-boot-restcontroller.jar demo.jar
EXPOSE 8080
CMD java -jar demo.jar
