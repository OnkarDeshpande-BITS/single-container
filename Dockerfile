	# Use an official OpenJDK runtime as a parent image
	FROM openjdk:17-alpine

	# set shell to bash
	RUN apk update && apk add bash

	# Copy the fat jar into the container at /app
	COPY employee-project-service/build/docker /app/employee-proj-service/
	COPY employee-service/target/employee-service.jar /app/emp-service/
	COPY single-container/start.sh /app/start.sh
	
	EXPOSE 8080 34004
	
	CMD ["bash" , "/app/start.sh"]