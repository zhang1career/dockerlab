for port in `seq 8001 8006`; do \
  mkdir -p ./data/${port}/conf \
  && PORT=${port} envsubst < ./redis-cluster.conf.tmpl > ./data/${port}/conf/redis.conf \
  && mkdir -p ./data/${port}/data; \
done
