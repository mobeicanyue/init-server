## 脚本说明 Script Description
本脚本可以帮助你快速部署服务器，包括设置时区、安装 Web 服务器（默认为 caddy）、SSH 安全配置、防火墙配置、禁用 ping、配置 Fail2ban 等等。在使用前请最好先阅读脚本内容，以免造成不必要的损失。你可以根据自己的需求修改脚本内容。目前支持 Debian 12, Ubuntu 22.04

This script can help you quickly deploy the server, including setting the time zone, installing the Web server (default is caddy), SSH security configuration, firewall configuration, disabling ping, configuring Fail2ban, etc. Before using, it is best to read the script content first to avoid unnecessary losses. You can modify the script content according to your needs.

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

## 问题反馈 Feedback
如果你在使用过程中遇到问题，可以在 GitHub 上提 issue，或者在我的博客留言。我看到会尽可能回复。

## 参考文章 Reference
具体操作与说明请参考我的博客：[从零开始部署服务器和网站](https://blog.ovvv.top/posts/4cde56ee/)
