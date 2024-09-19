# APT镜像

## PopOS镜像

感谢 上海交通大学 提供的 pop os 镜像

使用上海交通大学大学镜像

```bash
sudo sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/pop-os/@g' /etc/apt/sources.list.d/pop-os-apps.sources
sudo sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/pop-os/@g' /etc/apt/sources.list.d/pop-os-release.sources
sudo sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/@g' /etc/apt/sources.list.d/system.sources
```

## 更新、升级

更新软件仓库

```bash
sudo apt update
```

升级已经安装软件

```bash
sudo apt upgrade -y
```

建议更新升级后重启系统

