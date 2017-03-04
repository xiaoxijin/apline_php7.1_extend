FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/php7.1:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

RUN apk update && apk upgrade
RUN apk add php7.1-pecl
RUN apk add pcre-dev
RUN apk add git
RUN apk add autoconf
RUN apk add build-base
RUN apk add linux-headers
RUN apk add libaio-dev

RUN ln -fs /usr/bin/php-config7.1 /usr/bin/php-config \
&& ln -fs /usr/bin/phpize7.1 /usr/bin/phpize

RUN pecl install swoole
RUN pecl install yaconf
RUN pecl install xdebug
RUN pecl install msgpack
RUN pecl install redis
RUN pecl install inotify
RUN pecl install yaf
RUN pecl install ds
RUN pecl install channel://pecl.php.net/yac-2.0.1

