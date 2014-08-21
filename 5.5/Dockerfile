# Zend Server
#
# Version 0.1

# TODO:
# - version as a variable (both php and ZS)

FROM ubuntu:14.04

ADD https://raw.githubusercontent.com/dror-g/docker-zend_server/master/scripts/run /usr/local/bin/run

RUN apt-get -qqy update && apt-get -qqy install wget
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list && wget -O - http://repos.zend.com/zend.key | apt-key add -
RUN chmod 775 /usr/local/bin/run
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop

EXPOSE 80
EXPOSE 443
EXPOSE 10081
EXPOSE 10082
EXPOSE 10060
EXPOSE 10061
EXPOSE 10062

CMD ["/usr/local/bin/run"]
