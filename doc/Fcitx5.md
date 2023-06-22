# 输入法 Fcitx5

更符合现代人、功能强大的输入法

##  安装


安装 Fcitx5

```bash
sudo apt install fcitx5 fcitx5-chinese-addons
```

## 配置

使用以下命令打开配置面板，设置 Fcitx5 为默认输入法

```bash
im-config
```

修改全局环境变量配置文件 `sudo vim /etc/environment`

在文件末尾添加以下内容

```
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus
```

使用系统自带的软件 **启动应用程序** 将 `/usr/bin/fcitx5` 添加到开机启动项

重启系统生效

## 输入法主题配置

主题下载地址 [https://maicss.lanzoui.com/iScGart77xi](https://maicss.lanzoui.com/iScGart77xi
) (主题为第三方用户制作)

1. 下载、解压

2. 将主题文件移动到指定目录

```bash
mv Simple-dark ~/.local/share/fcitx5/themes
mv Simple-white ~/.local/share/fcitx5/themes
```

3. 重启 Fcitx5 生效

## 词库配置

词库下载地址 [https://maicss.lanzoui.com/iErOirt790h](https://maicss.lanzoui.com/iErOirt790h)(词库为第三方用户制作)


1. 先创建目录 (词库存储目录可能默认不存在)

```bash
mkdir -p  ~/.local/share/fcitx5/pinyin/dictionaries/
```

2. 将词库复制到词库存储目录

```bash
cp zhwiki-20210722.dict ~/.local/share/fcitx5/pinyin/dictionaries/
```

3. 测试词库是否生效, 输入 "清华大学"





