## Prepare
```
  ./config.sh
```

## Start Elasticsearch and Kibana
```
  dcup
```

## Reconfig Kibana and Restart it
```
  ./restart-kibana.sh
```

# Testment
## Test Elasticsearch
```
  curl 127.0.0.1:9200
```

## Test Kibana
  Open http://127.0.0.1:5601/
