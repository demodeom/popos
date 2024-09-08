# Python

安装Python构建依赖项 [https://github.com/pyenv/pyenv/wiki#suggested-build-environment](https://github.com/pyenv/pyenv/wiki#suggested-build-environment)

Ubuntu/Debian/Mint:

```bash
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
```

pyenv installer [https://github.com/pyenv/pyenv-installer](https://github.com/pyenv/pyenv-installer)


```bash
curl https://pyenv.run | bash
```

修改环境变量文件

```bash
vim ~/.zshrc
```

添加以下内容

```
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

## 安装 Python 3.10.14

```bash
mkdir ~/.pyenv/cache 
cd ~/.pyenv/cache 
wget https://mirrors.huaweicloud.com/python/3.10.14/Python-3.10.14.tar.xz
pyenv install 3.10.14
pyenv global 3.10.14
```
