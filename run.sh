#!/bin/bash

echo "$1" | sudo -S docker run -d --restart always --name nginx \
 --net=host \
 -v /home/azurengine/workspace/html:/opt/nginx/html \
 nginx:v1.22.1