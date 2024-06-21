#!/bin/bash
docker build -f Dockerfile_aarch64 -t nginx:v1.22.1 .

docker save nginx:v1.22.1 > docker_images/nginx-1_2_11_$(arch).tar