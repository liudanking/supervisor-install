#!/bin/bash
apt-get install python-setuptools -y
easy_install supervisor
mkdir -p /etc/supervisor/conf.d
mkdir -p /var/log/supervisor
wget https://raw.githubusercontent.com/liudanking/supervisor-install/master/supervisord.conf -O /etc/supervisor/supervisord.conf
wget https://raw.githubusercontent.com/liudanking/supervisor-install/master/supervisord.rc -O /etc/init.d/supervisord
chmod +x /etc/init.d/supervisord
update-rc.d supervisord defaults

# start service
service supervisord start
