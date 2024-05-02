一个帮助你初始化服务器时区和安全设置的脚本，在使用之前，请修改脚本中的 `TIME_ZONE` 和 `SSH_PORT` 变量。目前仅支持 Debian 和 Ubuntu 系统。在初始化完成后，服务器
- 时区会被设置为 `TIME_ZONE` 变量指定的值
- SSH 端口会被修改
- 禁 ping
- 安装启用 ufw, Fail2ban

A script to help you initialize the server time zone and security settings. Before using it, please modify the `TIME_ZONE` and `SSH_PORT` variables in the script. Currently only supports Debian and Ubuntu systems. After initialization, the server
- The time zone will be set to the value specified by the `TIME_ZONE` variable
- The SSH port will be changed
- Disable ping
- Install and enable ufw, Fail2ban

## 使用方法 Usage
```bash
wget https://raw.githubusercontent.com/mobeicanyue/init-server/main/init-server.sh
sudo bash init-server.sh
```
如果你的服务器无法访问 GitHub，可以使用 jsDelivr 加速访问：
```bash
wget https://cdn.jsdelivr.net/gh/mobeicanyue/init-server/init-server.sh
sudo bash init-server.sh
```

## 参考文章 Reference
具体操作与说明请参考我的博客：[从零开始部署服务器和网站](https://blog.ovvv.top/posts/4cde56ee/)
