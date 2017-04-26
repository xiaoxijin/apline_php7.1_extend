FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/php7.1:latest

Maintainer Xijin Xiao (http://github.com/xiaoxijin/)

ADD build_extend.sh $WORK_DIR

RUN sh build_extend.sh

ADD ext/* /etc/php7/conf.d/
ENTRYPOINT ["/bin/sh"]