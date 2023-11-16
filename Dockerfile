FROM ubuntu:18.04

USER root

ADD nginx-1.22.1.tar.gz /tmp
ADD nginx-http-flv-module-1.2.11.tar.gz /tmp
ADD nginx-rtmp-module-1.2.2.tar.gz /tmp

RUN apt-get update && apt-get -y upgrade  && apt-get install -y  gcc openssh-server lrzsz tree  openssl libssl-dev libpcre3 libpcre3-dev zlib1g-dev unzip zip make && cd /tmp/nginx-1.22.1 && ./configure --prefix=/opt/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_mp4_module --add-module=../nginx-rtmp-module-1.2.2 && make && make install && mv /tmp/nginx-rtmp-module-1.2.2 /opt/nginx/nginx-rtmp-module

COPY nginx.conf /opt/nginx/conf

WORKDIR /opt/nginx

EXPOSE 80 443 1935 554

VOLUME ["/opt/nginx/html"]

CMD ["/opt/nginx/sbin/nginx", "-g", "daemon off;"]