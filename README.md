# dotfiles
---

### 解决 ssh 频繁断连

在 Server 端:

```bash
# 打开
sudo vim /etc/ssh/sshd_config
# 添加
ClientAliveInterval 30
ClientAliveCountMax 6
```


