for port in `seq 9200 9200`; do \
  mkdir -p ./data/${port}/data \
  && mkdir -p ./data/${port}/log \
  && mkdir -p ./data/${port}/conf \
  && PORT=${port} envsubst < ./elasticsearch.yml.tmpl > ./data/${port}/conf/elasticsearch.yml
done

mkdir -p ./data/kibana \
&& touch ./data/kibana/kibana.yml