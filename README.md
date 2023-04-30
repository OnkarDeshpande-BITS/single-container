# single-container
This is used to create a single image of all service.
Modify start.sh and Dockerfile to add more service.

Docker build has to be executed from parent directory , with child directory as all services and this project.

Docker build command - docker build --tag=all-in-one -f single-container/Dockerfile .