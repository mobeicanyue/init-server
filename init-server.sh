#!/bin/bash

# 目前适配 debian12 及 ubuntu22

TIME_ZONE='Asia/Hong_Kong'
SSH_PORT='666'

# 定义颜色变量
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

sudo apt update

echo -e "${GREEN}\n输出当前时区\n${NC}"
timedatectl

echo -e "${YELLOW}\n设置当前时区${NC}"
sudo timedatectl set-timezone $TIME_ZONE

echo -e "${CYAN}\n设置系统时钟同步\n${NC}"
sudo apt install systemd-timesyncd -y

echo -e "${GREEN}\n输出当前时区\n${NC}"
timedatectl

echo -e "${YELLOW}\n安装 Web 服务器\n${NC}"
# sudo apt install nginx -y
sudo apt install caddy -y

echo -e "${PURPLE}\n修改 SSH 端口\n${NC}"
sudo sed -i "s/#Port 22/Port $SSH_PORT/" /etc/ssh/sshd_config
grep -w 'Port' /etc/ssh/sshd_config
sudo systemctl restart sshd

echo -e "${BLUE}\n安装防火墙\n${NC}"
sudo apt install ufw -y

echo -e "${YELLOW}\n开启防火墙\n${NC}"
sudo ufw allow $SSH_PORT/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
echo "y" | sudo ufw enable
sudo ufw status

echo -e "${RED}\n禁止 ping\n${NC}"
echo "net/ipv4/icmp_echo_ignore_all=1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

echo -e "${GREEN}\n安装 Fail2ban\n${NC}"
sudo apt install rsyslog -y
sudo apt install fail2ban -y
sudo systemctl enable --now fail2ban

echo -e "${CYAN}\n脚本执行完成，服务器初始化完毕！\n${NC}"
