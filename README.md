# alpine_php7_runtime_with_swoole

 = cmptech/alpine_php7_runtime_base + php swoole 
<pre>
REPOSITORY                                       TAG                 IMAGE ID            CREATED             SIZE
cmptech/alpine_php7_runtime_with_swoole          latest              97abdc7ea17b        2 weeks ago         27.74 MB
</pre>

#Test

* sh test_swoole.sh
* ab -n 20000 -c 100 http://localhost:8080/
* test result: in single CPU we have rps > 3000

#build
 
 using build.sh

# Usage

docker run --rm -ti cmptech/alpine_php7_runtime_with_swoole php -m

#TODO

* auto build...
* make a neon-simulation php piece as example

