# Zend Server 7 for Docker

This repo contains files required to build a Docker image of Zend Server 7 with PHP versions 5.3, 5.4 and 5.5.

## Usage

Clone the repo and change directory to where the downloaded Dockerfile resides, then execute:
"docker build . "

The build process will output an image ID once done.
To create a container of that image run the following command:

docker run -d -p 10088:10081 `<imageID>`

This command includes a redirect of Zend Server Web interface port 10081 to localhost:10088. you can access it via a web browser.
Alternatively, you can ommit the port redirect and access Zend Server directly at http://<container-IP>:10081 .
(The container IP can be obtained by using "docker inspect <container-id>")
Feel free to select a different port in case you run multiple Zend Server Containers or said port is already in use.

