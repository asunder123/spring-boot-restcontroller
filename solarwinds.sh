#!/bin/bash
java -javaagent:/home/asunder/spring-boot-restcontroller/appoptics-agent.jar  -jar /home/asunder/spring-boot-restcontroller/target/*.jar -jar /home/asunder/target/wiremock-jre8-standalone-2.32.0.jar --verbose=true --enable-browser-proxying=true
