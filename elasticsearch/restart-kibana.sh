ES_IP=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' es` envsubst < ./kibana.yml.tmpl > ./data/kibana/kibana.yml \
&& docker restart kibana