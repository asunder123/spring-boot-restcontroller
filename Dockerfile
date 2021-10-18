FROM java:8
WORKDIR /
ADD *.jar *.jar
EXPOSE 8082
CMD java - jar *.jar
