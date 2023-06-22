# V2rayA

作为一名开发， 没有顺手的梯子是一件很痛苦的事情。

v2rayA 是一个支持全局透明代理的 V2Ray Linux 客户端，同时兼容SS、SSR、Trojan(trojan-go)、PingTunnel协议。v2rayA 致力于提供最简单的操作，满足绝大部分需求。得益于Web客户端的优势，你不仅可以将其用于本地计算机，还可以轻松地将它部署在路由器或NAS上。


## 安装 V2rayA

V2rayA 支持 Docker 一键安装

```bash
docker run -d \
  --restart=always \
  --privileged \
  --network=host \
  --name v2raya \
  -e V2RAYA_ADDRESS=0.0.0.0:2017 \
  -v /lib/modules:/lib/modules:ro \
  -v /etc/resolv.conf:/etc/resolv.conf \
  -v /etc/v2raya:/etc/v2raya \
  mzz2017/v2raya
```


## 代理服务器

V2rayA 只是一款免费代理软件，代理服务器需要自己准备。

推荐以下代理服务器

[GitHub Free](https://github.com/freefq/free), 为爱发电， GitHub 上找到的免费服务器，订阅地址 [https://raw.fastgit.org/freefq/free/master/v2](https://raw.fastgit.org/freefq/free/master/v2)

收费但便宜的机场

[三毛机场](https://三毛机场.com/#/login) 3元 30G 流量

<!-- https://dy.jimao.icu/api/v1/client/subscribe?token=0f267133d220a53283d4016b4e2b4658 -->