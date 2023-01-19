## Overview
This project involves setting up a small infrastructure using different services within a virtual machine.  
Docker Compose is used to manage the services and containers.  
The project must be built using either Alpine Linux or Debian Buster.  
The domain name for the website is login.42.fr and it must redirect to the local IP address.  

## Usage
To set up and run the project:

Build the Docker images using the provided Dockerfiles and Makefile.  
```make build```  
Run docker-compose up to start the containers.  
The containers will automatically restart in case of a crash.
