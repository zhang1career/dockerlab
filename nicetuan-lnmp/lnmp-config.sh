service=nginx
mkdir -p ./data/${service}/conf
cp nginx.conf ./data/${service}/conf/
cp -r conf.d ./data/${service}/conf/
mkdir -p ./data/${service}/log

service=php-fpm
mkdir -p ./data/${service}/conf
cp php-fpm.conf ./data/${service}/conf/
cp -r php-fpm.d ./data/${service}/conf/
mkdir -p ./data/${service}/log

service=mysql
mkdir -p ./data/${service}/var
mkdir -p ./data/${service}/conf
cp mysqld.cnf ./data/${service}/conf/
mkdir -p ./data/${service}/log

service=app
mkdir -p ./data/${service}
cp index.html ./data/${service}/
cp index.php ./data/${service}/
cp 50x.html ./data/${service}/
