#!/bin/bash

./build.sh

./export_docker.sh

mv nginx-1_22_1.tar ./nginx_install

tar -czvf nginx_install.tar.gz nginx_install