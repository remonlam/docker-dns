# Running DNS in a container

## Build image
docker build -t dns .

## Run container from image
docker run -d -p 53:53/udp -v /storage/dns/bind:/etc -v /storage/dns/var:/var/named --name dns remonlam/dns
