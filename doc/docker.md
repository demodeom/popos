# 安装 Docker

很多好用的软件，提供 Docker 一键安装的方式，极大节约了安装时间和不同发行版之间的兼容问题


## 安装 Docker

安装 Docker

```bash
sudo apt install -y docker.io
```

解决 sudo 权限问题

```bash
sudo usermod -aG docker $USER
```

## 配置国内镜像

配置文件： `/etc/docker/daemon.json`

编辑文件

```bash
vim /etc/docker/daemon.json
```

国内镜像配置方法如下

```json
{
  "registry-mirrors": ["http://f1361db2.m.daocloud.io"]
}
```
国内镜像配置需要重启 docker 服务生效

```bash
sudo systemctl restart docker.service
```