# getSS

`getSS.sh` is a bash file written for Ubuntu users(especially myself) to automatically deploy [shadowsocksr](https://github.com/liyue80/shadowsocksr-manyuser) on your server or client.

It consists of three part
-   first, intall git on Ubuntu

    ```bash
    sudo apt-get install git -y
    ```

-   then, clone shadowsocksr via

    ```bash 
    git clone https://github.com/liyue80/shadowsocksr-manyuser.git
    ```

-   finally, create a config file named `shadowsocks.json` in shadowsocksr-manyuser/shadowsocks. You should modify it manually. This is my configuration:
    -   for server:
        ```json
        {
        "server_port":"8300",
        "password":"my_awesome_password",   
        "method":"aes-256-cfb",
        "protocol":"auth_aes128_md5",
        "obfs":"plain"
        }
        ```
    -   for client:
        ```json
        {
        "server":"my_server_address",
        "server_port":"8300",
        "local_address":"127.0.0.1",
        "local_port":"1080",
        "password":"my_awesome_password",  
        "timeout":300,
        "method":"aes-256-cfb",
        "protocol":"auth_aes128_md5",
        "obfs":"plain"
        }
        ```

-   to start your shadowsocksr service, you should run these bash command below in shadowsocksr-manyuser/shadowsocks
    
    for server:
    ```bash
    python server.py -c shadowsocks.json
    ```
    For client:
    ```bash
    python local.py -c shadowsocks.json
    ```
    


PS: please forgive my awful English.