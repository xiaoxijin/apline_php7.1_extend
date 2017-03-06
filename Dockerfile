FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/php7.1:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN apk update
RUN apk upgrade
RUN apk add git
RUN apk add autoconf
RUN apk add build-base
RUN apk add linux-headers
RUN apk add libaio-dev
RUN apk add php7.1-dev


RUN ln -fs /usr/bin/php-config7.1 /usr/bin/php-config \
&& ln -fs /usr/bin/phpize7.1 /usr/bin/phpize


ADD build_extend.sh /root/

RUN sh /root/build_extend.sh