# DNS配置

## 推荐阿里云

IP4

```
223.5.5.5
223.6.6.6
```

IP6

```
2400:3200::1
2400:3200:baba::1
```

## Why DNS ？

修改前

```
demodeom@pop-os:~$ ping raw.githubusercontent.com -c3
PING raw.githubusercontent.com (127.0.0.1) 56(84) bytes of data.
64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.009 ms
64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=64 time=0.018 ms
64 bytes from localhost (127.0.0.1): icmp_seq=3 ttl=64 time=0.017 ms

--- raw.githubusercontent.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2053ms
rtt min/avg/max/mdev = 0.009/0.014/0.018/0.004 ms
```

修改后

```
demodeom@pop-os:~$ ping raw.githubusercontent.com -c3
PING raw.githubusercontent.com (185.199.109.133) 56(84) bytes of data.
64 bytes from cdn-185-199-109-133.github.com (185.199.109.133): icmp_seq=1 ttl=128 time=120 ms
64 bytes from cdn-185-199-109-133.github.com (185.199.109.133): icmp_seq=2 ttl=128 time=121 ms
64 bytes from cdn-185-199-109-133.github.com (185.199.109.133): icmp_seq=3 ttl=128 time=121 ms

--- raw.githubusercontent.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 120.394/120.504/120.613/0.089 ms
```

## 自动配置

修改配置文件resolved.conf

```Bash
sudo vim /etc/systemd/resolved.conf
```

添加以下内容

```
DNS=223.5.5.5 2400:3200::1
FallbackDNS=223.6.6.6 2400:3200:baba::1
```

重启服务

```bash
sudo systemctl restart systemd-resolved
```