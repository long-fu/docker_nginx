FROM ubuntu:20.04

RUN apt-get update && apt-get -y upgrade && apt-get install -y openssl && mkdir /opt/nginx

COPY nginx /opt/nginx

WORKDIR /opt/nginx

EXPOSE 80 443 1935 554

VOLUME [ "/opt/nginx/conf", "/opt/nginx/html" , "/opt/nginx/logs"]

USER root

# ENTRYPOINT ["/opt/nginx/sbin/nginx"]

CMD ["/opt/nginx/sbin/nginx", "-g", "daemon off;"]