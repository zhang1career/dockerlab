port=3306
mkdir -p ./data/${port}/mysql
mkdir -p ./data/${port}/conf
cp mysqld-master.cnf ./data/${port}/conf/
mkdir -p ./data/${port}/log

port=3307
mkdir -p ./data/${port}/mysql
mkdir -p ./data/${port}/conf
cp mysqld-slave.cnf ./data/${port}/conf/
mkdir -p ./data/${port}/log