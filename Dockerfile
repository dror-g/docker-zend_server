# Zend Server
#
# Version 0.1

# TODO:
# - version as a variable (both php and ZS)

#FROM ubuntu:raring
FROM ubuntu:14.04

ADD https://raw.githubusercontent.com/dror-g/docker-zend_server/blob/master/scripts/add-repo.sh /usr/local/bin/add-repo.sh
ADD https://raw.githubusercontent.com/docker-zend_server/blob/master/scripts/donothing /usr/local/bin/donothing
ADD https://raw.githubusercontent.com/dror-g/docker-zend_server/blob/master/scripts/run /usr/local/bin/run
#ADD https://github.com/dror-g/docker-zend_server/blob/master/scripts/add-repo.sh /usr/local/bin/add-repo.sh
#ADD https://github.com/dror-g/docker-zend_server/blob/master/scripts/donothing /usr/local/bin/donothing
#ADD https://github.com/dror-g/docker-zend_server/blob/master/scripts/run /usr/local/bin/run
#ADD scripts/add-repo.sh /usr/local/bin/add-repo.sh
#ADD scripts/donothing /usr/local/bin/donothing
#ADD scripts/run /usr/local/bin/run

RUN apt-get -qqy update
RUN apt-get -qqy install wget
RUN chmod 775 /usr/local/bin/add-repo.sh
RUN chmod 775 /usr/local/bin/run
RUN chmod 775 /usr/local/bin/donothing
RUN /usr/local/bin/add-repo.sh && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y zend-server-php-5.4 supervisor && /usr/local/zend/bin/zendctl.sh stop
#ADD zend.conf /etc/supervisor/conf.d/zend.conf

EXPOSE 80
EXPOSE 443
EXPOSE 10081
EXPOSE 10082
EXPOSE 10060
EXPOSE 10061
EXPOSE 10062

CMD ["/usr/local/bin/run"]
