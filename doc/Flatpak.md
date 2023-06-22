# 软件管理工具 Flatpak


## 国内镜像


使用 上海交通 大学镜像

添加密钥

```
wget https://mirror.sjtu.edu.cn/flathub/flathub.gpg
sudo flatpak remote-modify --gpg-import=flathub.gpg flathub
```

添加镜像

```
sudo flatpak remote-add --if-not-exists flathub https://mirror.sjtu.edu.cn/flathub
```

如果镜像已经存在， 可以修改镜像

```
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
```

> 注
> Pop OS 会自动为 flatpak 应用添加快捷方式
> 第一次安装应用可能会出现无法启动应用的情况，解决方法： 注销系统重新登陆，重启应用即可