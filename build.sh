!/bin/bash

# sudo rm -rf nginx-1.22.1
# sudo rm -rf nginx-http-flv-module-1.2.11
# sudo rm -rf nginx-rtmp-module-1.2.2

# tar -zxvf nginx-1.22.1.tar.gz
# tar -zxvf nginx-http-flv-module-1.2.11.tar.gz
# tar -zxvf nginx-rtmp-module-1.2.2.tar.gz

# cd nginx-1.22.1
# ./configure --prefix=/opt/nginx --with-http_stub_status_module --with-http_ssl_module --with-http_mp4_module --add-module=../nginx-rtmp-module-1.2.2
# make -j$(nproc)
# sudo make install

# ./configure --prefix=/opt/nginx --add-module=../nginx-http-flv-module-1.2.11
# make -j$(nproc)
# sudo make install

# cd ..

# sudo cp -r /opt/nginx .

sudo docker build -t nginx:v1.22.1 .

# sudo rm -rf nginx-1.22.1
# sudo rm -rf nginx-http-flv-module-1.2.11
# sudo rm -rf nginx-rtmp-module-1.2.2
# sudo rm -rf nginx