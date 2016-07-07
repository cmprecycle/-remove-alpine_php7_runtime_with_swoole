
#WARNING: as auto build cannot extract the swoole.so to local, so manually run build.sh to build this docker is mandatory now

FROM cmptech/auto_alpine_php7_runtime_base

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

#RUN apk update
#RUN apk add docker
#RUN docker --version

ADD swoole.so /usr/lib/php7/modules/
ADD php.ini /etc/php7/

