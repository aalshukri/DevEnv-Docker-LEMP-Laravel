# DevEnv-Docker-LEMP-Laravel

Development Environment using Docker implementing LEMP server hosting Laravel application.

## Build

You only need to build the application once.
Once built, you can simply run the application each time you need this development environment. 

1. Build the base image.

`> cd docker/lemp-base`
`> docker build . -t lemp-dev-base`

Check image with name 'lemp-dev-base' has been created
`> docker images`


2. Build the application image (which will utilise the base image created in step 1).

Move into directory 'docker/lemp-dev'.

`> cd ..`
`> cd lemp-dev`

Build the application image

`> docker build . -t lemp-dev`

Again, to check this image was created run the command and look for 'lemp-dev' has been created
`> docker images`


## Run

Navigate to directory '/docker'
and start the docker container using

`> docker-compose up -d`

This will start a docker container named 'laravelwebapp'.
serving up the contents of folder '/www/'.

To connect directly to this container (LEMP server)
`> docker exec -it laravelwebapp /bin/bash`

To stop the docker container use

`> docker-compose down`


## Access 

View web page at the following url 

https://localhost/index.html

Served from folder '/www/index.html'

or

https://127.0.0.1/laravelwebapp/index.html

Served from folder '/www/laravelwebapp/index.html'
