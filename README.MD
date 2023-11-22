# nginx镜像制作

```sh
# 直接制作好对应平台的nginx镜像
./build.sh 

# 镜像导出 会在当前目录生成 nginx-1_22_1.tar 镜像包
./export_docker.sh

# 测试脚本
./run.sh
./stop.sh

# 导出镜像安装包
./export_install.sh
```

## 更新

[更新文档](./update_nginx/README.MD)