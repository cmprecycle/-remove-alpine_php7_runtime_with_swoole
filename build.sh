dd=$(cd `dirname $0`; pwd)
dt=`date +%Y%m%d%H%M%S`

echo $dt

docker run cmptech/auto_alpine_php7_dev_with_swoole php -m

echo NOTES: you might need to build cmptech/alpine_php7_dev_with_swoole first to get the swoole.so
echo NOTES: you need to build cmptech/alpine_php7_runtime_base if want to copy to the runtime
#get the swoole.so from cmptech/alpine_php7_dev_with_swoole
docker run -v /var/tmp/${dt}/:/root/tmp/ cmptech/auto_alpine_php7_dev_with_swoole sh -c "cp -f /usr/lib/php7/modules/swoole.so /root/tmp/"
ls -al /var/tmp/${dt}/swoole.so

#copy for test
#docker run -ti -v /var/tmp/${dt}/:/root/tmp/ cmptech/alpine_php7_runtime_base bash -c "cp /root/tmp/swoole.so /usr/lib/php7/modules/swoole.so && php -m"

cp /var/tmp/${dt}/swoole.so $dd/
#docker build --force-rm -t cmptech/alpine_php7_runtime_with_swoole $dd

docker run cmptech/alpine_php7_runtime_with_swoole php -m
