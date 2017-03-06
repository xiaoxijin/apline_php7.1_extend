

cd /root/
git clone https://github.com/laruence/yaconf.git
cd yaconf/
phpize
./configure
make && make install
apk del libaio-dev php7.1-dev git autoconf build-base linux-headers
rm -rf /var/cache/apk/*
rm -rf /root/yaconf/
rm -rf /tmp/*
#RUN pecl install swoole
#RUN pecl install yaconf
#RUN pecl install xdebug
#RUN pecl install msgpack
#RUN pecl install redis
#RUN pecl install inotify
#RUN pecl install yaf
#RUN pecl install ds
#RUN pecl install channel://pecl.php.net/yac-2.0.1