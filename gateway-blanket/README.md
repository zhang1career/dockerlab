## Start Zookeeper Cluster
```bash
  dcup
```

## Test
### primary works
Visit `127.0.0.1:8000` and you would see `Primary`.

### primary falldowned, and secondary works
```bash
   docker pause ng1
```
Visit `127.0.0.1:8000` and you would see `Secondary`.

### primary recovered, and it works
```bash
$ docker unpause ng1
$ docker pause ng2
```
Visit `127.0.0.1:8000` and you should see `Primary` again. 