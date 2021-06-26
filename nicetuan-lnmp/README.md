# Setup
## clean
```bash
rm -rfv data
```

## Prepare
```bash
  ./lnmp-config.sh
```

## Start MySQL Cluster
### startup
```bash
  dcup
```
### setup mysql privileges
```bash
  dps | grep mysql
  deit xxxxxxxx
```

```mysql
  mysql -uroot -p -P3306
  CREATE USER 'root'@'%' IDENTIFIED BY '123123';
  GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;
  exit;
```

## Check
### check nginx for file accessable
```bash
  curl http://localhost:10080/nginx.html
```

### check php-fpm
```bash
  curl http://localhost:10080/index.php
```

### check mysql connection
```bash
  curl http://localhost:10080/mysql-conn.php
```

### check redis connection
```bash
  curl http://localhost:10080/redis-conn.php
```
