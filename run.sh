#!/bin/bash
docker run -it --rm -p 80:80 -p 8080:8080 -p 1935:1935 nginx:v1.22.1 bash