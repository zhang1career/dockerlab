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
```
  dcup
```
### check
```
  curl http://localhost:10080/index.php
```