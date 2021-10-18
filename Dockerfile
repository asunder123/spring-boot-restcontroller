FROM java:8
WORKDIR /
ADD *.jar docker.jar
EXPOSE 8083
CMD java - jar docker.jar
