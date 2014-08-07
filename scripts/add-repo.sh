#!/bin/bash
echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
wget -O - http://repos.zend.com/zend.key | apt-key add -
