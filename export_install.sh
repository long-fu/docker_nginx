#!/bin/bash

./build.sh

./export_docker.sh

mv nginx-1_22_1_$(arch).tar ./nginx_install

tar -czvf nginx_install_$(arch).tar.gz nginx_install