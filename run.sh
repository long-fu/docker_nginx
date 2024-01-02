#!/bin/bash

echo "$1" | sudo -S docker run -d --restart always --name nginx \
 --net=host \
 -v /home/azurengine/workspace/html:/opt/nginx/html \
 nginx:v1.22.1

docker run -d --restart always --name nginx \
 --net=host \
 -v $(pwd)/html:/opt/nginx/html \
 nginx:v1.22.1
 
docker run -d -u 1000:1000 --restart always --name nginx \
 --net=host \
 -v $(pwd)/html:/opt/nginx/html \
 nginx:v1.22.1 

docker run -it --rm -u 1000:1000 --name nginx \
 --net=host \
 -v $(pwd)/html:/opt/nginx/html \
 nginx:v1.22.1 \
 /bin/bash

docker run -it --rm -u root --name nginx \
 --net=host \
 -v $(pwd)/html:/opt/nginx/html \
 nginx:v1.22.1 \
 /bin/bash