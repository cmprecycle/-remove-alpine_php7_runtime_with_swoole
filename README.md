# alpine_php7_runtime_with_swoole

 = cmptech/alpine_php7_runtime_base + php swoole 

#Test

* sh test_swoole.sh
* ab -n 20000 -c 100 http://localhost:8080/
* test result: in single CPU we have rps > 3000

#build
 
 using build.sh
   
#TODO

* any green nginx destribution to do the load balancing to this with unix socket
* auto download denpency and build (alpine_php7_runtime_base && alpine_php7_dev_base && alpine_php7_dev_with_swoole) and then copy an autobuild into hub.docker.io
* make a neon-simulation php piece

