FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/php7.1:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

###########################
#RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories
#RUN echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
#RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade
#RUN apk add php7
#RUN apk add php7-opcache
#RUN ln -fs /usr/bin/php7 /usr/bin/php

########################### build swoole.so and copy to /root/
ADD build_extend.sh /root/

RUN sh /root/build_extend.sh

ADD php.ini /etc/php7/

RUN php -m