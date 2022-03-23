#!/bin/sh
STATUS=0
while [ $STATUS -eq 0 ]
do
	    java SpringBootRestcontrollerExampleApplication
	        STATUS=$?
done
