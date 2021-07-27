## Prepare
```
  ./zookeeper-cluster-config.sh &&
  ./rabbitmq-config.sh
```

## Start Zookeeper Cluster
```
  dcup
```

## Cluster Status
```
  dcps
```

### zk1 status
```
  deit zk1
  zkServer.sh status
```

### zk2 status
```
  deit zk2
  zkServer.sh status
```

### zk3 status
```
  deit zk3
  zkServer.sh status
```
