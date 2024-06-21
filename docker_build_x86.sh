#!/bin/bash
docker build -f Dockerfile_x86 -t nginx-flv-web:v1.2.11 .

docker save nginx-flv-web:v1.2.11 > docker_images/nginx-flv-web-1_2_11_$(arch).tar