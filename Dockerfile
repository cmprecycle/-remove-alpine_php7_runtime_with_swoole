FROM cmptech/auto_alpine_php7_runtime_base

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

#use build.sh to get a fresh-built
ADD swoole.so /usr/lib/php7/modules/
ADD php.ini /etc/php7/

