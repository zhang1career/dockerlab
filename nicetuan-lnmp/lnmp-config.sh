service=nginx
mkdir -p ./data/${service}/conf
cp docker/nginx/nginx.conf ./data/${service}/conf/
cp -r docker/nginx/conf.d ./data/${service}/conf/
mkdir -p ./data/${service}/log

service=php-fpm
mkdir -p ./data/${service}/conf
cp docker/php/php.ini ./data/${service}/conf/
cp docker/php/php-fpm.conf ./data/${service}/conf/
cp -r docker/php/php-fpm.d ./data/${service}/conf/
mkdir -p ./data/${service}/log

service=mysql
mkdir -p ./data/${service}/var
mkdir -p ./data/${service}/conf
cp docker/mysql/mysqld.cnf ./data/${service}/conf/
mkdir -p ./data/${service}/log

service=redis
mkdir -p ./data/${service}/conf
cp docker/redis/redis.conf ./data/${service}/conf/
mkdir -p ./data/${service}/data
mkdir -p ./data/${service}/log

service=app
mkdir -p ./data/${service}
cp docker/app/* ./data/${service}/
