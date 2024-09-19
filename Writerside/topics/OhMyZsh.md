# OhMyZsh


下载 oh my zsh

```bash
git clone  --depth 1  https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh
```

生成配置文件

```Bash
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

修改当前用户默认shell（重启生效）

```Bash
sudo usermod --shell /bin/zsh ${USER}
```
