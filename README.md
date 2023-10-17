I'm using a vagrant container for docker because docker desktop for windows is crashing my windows system.

1. #### Install vagrant on Windows system

The virtual machine uses a network bridge and a static IP address.


2. #### In the Vagrantfile, configure the IP depending on your network.

The IP address is set to the network 192.168.1.0/24. And it uses the IP address 192.168.1.165.

Run MinGW-w64.

Eexecute command ``` vagrant up ```

####  Vagrantfile steps:

1. dwnld_from_github.sh will download and unzip files from https://github.com/FaztWeb/php-mysql-crud to tempo folder.
(tempo folder is shared folder for docker)

2. Vagrant deploy ubuntu container with docker.

3. Last command  ``` docker-compose up -d ```  in dckr_bootstrap.sh  will run multi-container docker applications in vagrant container. 


PHP MySQL CRUD 

http://192.168.1.165:8082/index.php

phpMyAdmin

http://192.168.1.165:8081/

Login: root
Password: password123


For Putty:

192.168.1.165:22

Login: vagrant

Password: vagrant