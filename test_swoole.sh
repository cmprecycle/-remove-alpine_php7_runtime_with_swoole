dd=$(cd `dirname $0`; pwd)
dt=`date +%Y%m%d%H%M%S`
echo $dt

docker run -p 8080:9501 -v ${dd}:/root/ cmptech/alpine_php7_runtime_with_swoole php /root/test_swoole.php &
sleep 2
siege -c 10 -b -q -t 10s http://192.168.99.100:8080/

