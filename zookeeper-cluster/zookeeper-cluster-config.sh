for serial in `seq 1 3`; do \
  mkdir -p ./data/zookeeper-cluster/zk${serial}/data \
  && mkdir -p ./data/zookeeper-cluster/zk${serial}/log; \
done
