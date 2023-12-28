#!/bin/bash

docker save nginx:v1.22.1 > nginx-1_22_1_$(arch).tar

# docker save nginx:v1.22.1 > nginx-1_22_1_x86_64.tar