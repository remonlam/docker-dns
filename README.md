# Running DNS in a container

## Build image
docker build -t dns .

## Run container from image
docker run -d -p 53:53/udp --name dns dns
