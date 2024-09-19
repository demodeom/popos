# 输入法Fcitx5

安装Fcitx5

```bash
sudo apt install fcitx5 fcitx5-chinese-addons
```

使用以下命令，设置默认输入法为Fcitx5

```bash
im-config
```

使用 **Startup Applications** 将 **fcitx5** 添加到开机自启动

使用以下命令， 启动输入法

```bash
fcitx5
```

使用以下命令启动fcitx5配置

```bash
fcitx5-config-qt
```

将输入法 **Pinyin** 从右边分组添加到左边分组

使用以下命令编辑环境变量文件**environment**

```bash
sudo vim /etc/environment
```

在**environment**文件末尾添加以下内容

```
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus
```

部分配置需要重启生效
