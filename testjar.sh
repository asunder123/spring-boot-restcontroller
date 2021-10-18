#!/bin/bash 
ls -ltr
cmd="$HOME/target/java -jar *.jar"
status=$?
[ $status -eq 0 ] && echo "$cmd command was successful" || echo "$cmd failed"
cmd="curl http://localhost:8082/actuator/chaosmonkey"
status=$?
[ $status -eq 0 ] && echo "$cmd chaos is active" || echo "$cmd failed"
