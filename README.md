# ansible-vagrant-apache-mysql-php-wordpress
automatisation to install wordpress on two sperate server using vagrant and ansible

## PREREQUISITE
To start all script you need
- [ansible](https://www.ansible.com/)
- [vagrant](https://www.vagrantup.com/)
- [virtualbox](https://www.virtualbox.org/)

## Info
To start you only need to lunch the script **start.sh**
```
sh start.sh
```
This will create two Debian on your machine that will simulate separetly a database server and a web server.   
On database server, MySQL will be use.   
On web server, you will find php5, apache2 and wordpress.

### Issues
Improvement is needed to allow user to choose specificate data directory with myslq.   
