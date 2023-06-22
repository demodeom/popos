# 更新升级

Pop_Os 基于 Ubuntu 发行版, 因此可以试用国内 Ubuntu 镜像， 但是关于 Pop_Os 系统软件部分暂时没有国内镜像。

## 配置国内镜像

以 huaweicloud 镜像为例

镜像配置文件： `/etc/apt/sources.list.d/system.sources`

修改文件  `/etc/apt/sources.list.d/system.sources` 前， 先备份文件

```bash
sudo cp /etc/apt/sources.list.d/system.sources ~/
```

修改前

```
X-Repolib-Name: Pop_OS System Sources
Enabled: yes
Types: deb deb-src
URIs: http://apt.pop-os.org/ubuntu
Suites: jammy jammy-security jammy-updates jammy-backports
Components: main restricted universe multiverse
X-Repolib-ID: system
X-Repolib-Default-Mirror: http://apt.pop-os.org/ubuntu
```

修改后

```
X-Repolib-Name: Pop_OS System Sources
Enabled: yes
Types: deb deb-src
URIs: https://repo.huaweicloud.com/ubuntu/
Suites: jammy jammy-security jammy-updates jammy-backports
Components: main restricted universe multiverse
X-Repolib-ID: system
X-Repolib-Default-Mirror: https://repo.huaweicloud.com/ubuntu/
```

## 更新升级

更新软件仓库

```bash
sudo apt update
```

升级软件

```bash
sudo apt upgrade
```