#!/bin/bash

install_path=$(pwd)

run_path=~/workspace

service_path=$run_path/service

# 卸载宿主机老旧的nginx
echo "$1" | sudo -S systemctl stop nginx.service

echo "$1" | sudo -S systemctl disable nginx.service

echo "$1" | sudo -S systemctl daemon-reload

echo "$1" | sudo -S rm -f $service_path

# 停止nginx

echo "$1" | sudo -S docker stop nginx

echo "$1" | sudo -S docker rm nginx

echo "$1" | sudo -S docker load < $install_path/nginx-1_22_1.tar

echo "$1" | sudo -S docker run -d --restart always --name nginx \
 --net=host \
 -v $run_path/html:/opt/nginx/html \
 nginx:v1.22.1