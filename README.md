# Aohua_Project2
A Bash command-line tool that performs a useful data preparation task such as truncating data, sorting it, cleaning data, or doing ETL.

## configuration
The basic structure of this CLI is that we write the bash script for data preparation, then we generate the docker image and push to Docker Hub. After this we can run docker image through dockerhub on codespaces or AWS Cloud 9.

## test configuration
build docker image ```docker build . -t oliverzhanga(dockerhub username)/docker_image_name```
test locally : use ```docker image ls``` to find image ID, ```docker run -it imageID /bin/bash main.sh args```
test in cloud : Login to Docker Hub using ```docker login -u oliverzhanga``` or through adding secrets, then ```docker run -it dockerhub_username/imageID:latest /bin/bash main.sh args```