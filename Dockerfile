FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/php7.1:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)


ADD build_extend.sh /root/

RUN sh /root/build_extend.sh

ADD ext/* /etc/php7/conf.d/

