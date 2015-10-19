#!/bin/bash
easy_install supervisor
mkdir -p /etc/supervisor/conf.d
wget conf -O /etc/supervisor/supervisord.conf
wget https://gist.github.com/howthebodyworks/176149/raw/88d0d68c4af22a7474ad1d011659ea2d27e35b8d/supervisord.sh -O /etc/init.d/supervisord
chmod +x /etc/init.d/supervisord
update-rc.d supervisord defaults
