# Setup
## Prepare
```
  ./mysql-cluster-config.sh
```

## Start Zookeeper Cluster
### startup
```
  dcup
```
### check
```
  dps | grep mysql
```

## Modify privileges
### master
```
  CREATE USER 'root'@'%' IDENTIFIED BY '123123';
  GRANT ALL PRIVILEGES ON *.*  TO 'root'@'%';
  GRANT ALL PRIVILEGES ON *.*  TO 'root'@'localhost';
  FLUSH PRIVILEGES;
```
### slave
```
  CREATE USER 'root'@'%' IDENTIFIED BY '123123';
  GRANT REPLICATION SLAVE ON *.*  TO 'root'@'%';
  GRANT REPLICATION SLAVE ON *.*  TO 'root'@'localhost';
  FLUSH PRIVILEGES;
```
### check
```
   use mysql;
   select user, host, plugin, authentication_string from user where user='root';
```

## Get Server Public Key
Login mysql2's server, connect mysql1 and get public key
```
  mysql -uroot -p -h172.25.0.101 -P3306 --get-server-public-key
```

## Subscribe
Login mysql2
### stop slave
```
  stop slave;
```
### reset slave
```
  reset slave;
```
### show master status
```
  show master status\G
```
Record 'File' and 'Position'.
### subscribe
replace master_log_file and master_log_pos with 'File' and 'Position' above
```
  change master to master_host='172.25.0.101', master_user='root', master_password='123123', master_port=3306, master_log_file='mysql-bin.000003',master_log_pos=1084;
```
### start slave
```
  start slave;
```
### show slave status
```
  show slave stats\G
```
### set readonly
```
  set global read_only=1;
```

## Check
### 判断主从完全同步的方法
1. Master_Log_File 和 Relay_Master_Log_File 所指向的文件必须一致;
2. Relay_Log_Pos 和 Exec_Master_Log_Pos 也必须一致。


# Appendix
## Trouble Shootings
### <span id="appendix.ts.fe1236">Last_IO_Error: Got fatal error 1236 from master when reading data from binary log: 'Client requested master to start replication from position > file size'</span>
Export binlog from host ./data/3306/mysql
```
  mysqlbinlog mysql-bin.000003 > bin000003.log
```
See the binlog file
```
  tail -n20 bin000003.log
```
We get end_log_pos=1077
```
#210325  9:07:36 server id 1  end_log_pos 1077 CRC32 0x74247967 	Query	thread_id=20	exec_time=0	error_code=0
```
Stop slave, reset slave, change master with 'master_log_pos=1077', then start slave, and show slave status.