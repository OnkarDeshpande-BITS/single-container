#!/bin/bash

java -jar /app/emp-service/employee-service.jar &
java -jar /app/address-service/address-service.jar &
java -jar /app/project-service/project-service.jar
