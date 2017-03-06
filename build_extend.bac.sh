apk update && apk upgrade \
&& apk add autoconf build-base linux-headers \
libaio-dev \
zlib-dev \
php-dev \
php-pear \
&& ln -s /usr/bin/php-config /usr/bin/php-config \
&& ln -s /usr/bin/phpize /usr/bin/phpize \
&& sed -i "s/struct sigaction {/#ifndef __sighandler_t \ntypedef void (*__sighandler_t)(int);\n#endif\nstruct sigaction\n{/g" /usr/include/signal.h \
&& sed -i "s/union {void (*sa_handler)(int)/__sighandler_t sa_handler/g" /usr/include/signal.h \
&& sed -i "s/ -n / /" `which pecl` \
&& pecl install swoole \
&& pecl install yaf \
&& pecl install yaconf \
&& pecl install channel://pecl.php.net/yac-2.0.1 \
&& pecl install redis \
&& pecl install xdebug \
&& pecl install ds \
&& pecl install inotify \
&& pecl install msgpack \
&& apk del \
zlib-dev \
libaio-dev \
php-dev \
php-pear \
autoconf build-base linux-headers \
&& rm -rf /var/cache/apk && mkdir /var/cache/apk/ && rm -rf /tmp/*
