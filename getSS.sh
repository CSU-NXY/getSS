#!/bin/bash

sudo apt-get install git -y
git clone https://github.com/liyue80/shadowsocksr-manyuser.git
cd shadowsocksr-manyuser/shadowsocks/
echo '{
    "server":"",
    "server_port":"8392",
    "local_address":"127.0.0.1",
    "local_port":"1080",
    "password":"",
    "timeout":300,
    "method":"aes-256-cfb",
    "protocol":"auth_aes128_md5",
    "obfs":"tls1.2_ticket_auth"
}' >> shadowsocks.json
