# alpine_php7_runtime_with_swoole

 = cmptech/alpine_php7_runtime_base + php swoole 

#Usage

=test
sh test_swoole.sh
and then
ab -n 10000 -c 100 http://localhost:8080/

#build
sh build.sh
   
#TODO

auto download denpency and build (alpine_php7_runtime_base && alpine_php7_dev_base && alpine_php7_dev_with_swoole)

