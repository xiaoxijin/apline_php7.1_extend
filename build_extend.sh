#echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories
#echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
#echo "nameserver 8.8.8.8" >> /etc/resolv.conf 


apk update && apk upgrade

apk add php7-opcache \
php7-session \
php7-json \
php7-iconv \
php7-phar \
php7-mysqli \
php7-posix \
php7-ctype

apk add autoconf build-base linux-headers \
libaio-dev \
zlib-dev \
pcre-dev \
php7-dev \
php7-pecl


ln -s /usr/bin/php-config7 /usr/bin/php-config \
&& ln -s /usr/bin/phpize7 /usr/bin/phpize \
&& ln -s /usr/bin/pecl7 /usr/bin/pecl \
#sed -i "s/struct sigaction {/#ifndef __sighandler_t \ntypedef void (*__sighandler_t)(int);\n#endif\nstruct sigaction\n{/g" /usr/include/signal.h \
#&& sed -i "s/union {void (*sa_handler)(int)/__sighandler_t sa_handler/g" /usr/include/signal.h \
#&& sed -i "s/ -n / /" `which pecl` \
pecl install swoole \
&& pecl install yaconf \
&& pecl install channel://pecl.php.net/yac-2.0.1 \
&& pecl install xdebug \
&& pecl install ds \
&& pecl install inotify \
&& pecl install msgpack \
&& pecl install yaf \
&& pecl install redis

apk del autoconf build-base linux-headers \
libaio-dev \
zlib-dev \
pcre-dev \
php7-dev \
php7-pecl \
&& rm -rf /var/cache/apk && mkdir /var/cache/apk/ && rm -rf /tmp/*
