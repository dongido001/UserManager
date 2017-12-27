#!/bin/bash

# checks if docker is installed on the machine...

which docker && docker --version | grep "Docker version"

if [ $? -eq 0 ]
then
    echo "Yo! Docker is installed on your system."

    # Run the docker-compose command

    docker-compose up

else

	read -p "Docker is not installed, Do you want to install docker now? (y/n) " RESP
      if [ "$RESP" = "y" ]; then
         echo "Nice, we'll try to install docker for you now..."

         echo "install docker" >&2

          bash ./install_docker.sh
     else
         echo "Good bye!"

         exit
     fi
fi