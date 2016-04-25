# proxychain4

## 安装与配置
```bash
brew install proxychains-ng 
```

安装完成后，编辑配置文件：

```bash
vim /usr/local/etc/proxychains.conf
```

在配置文件的末尾，注释掉原来的代理，然后添加本地ss客户端的代理地址并保存

```
socks5 127.0.0.1 1080
```

## 使用
在命令的前面加上proxychains4即可，如

```bash
proxychains4 curl -L http://www.google.com.hk
proxychains4 npm install xxx

# 激进方案
proxychains4 bash 
proxychains4 su root
```

