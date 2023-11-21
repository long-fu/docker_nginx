#!/bin/bash
echo "$1" | sudo -S docker stop nginx
echo "$1" | sudo -S docker rm nginx