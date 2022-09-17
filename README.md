# near-protocol-node-monitoring
A monitoring tool based on Grafana + Prometheus for Near Protocol Node

![Grafana dasboard](./screenshots/image1.png "Grafana dasboard image")

# Setup

### Follow this guides to install docker engine and docker compose:
- https://docs.docker.com/desktop/install/linux-install/
- https://docs.docker.com/compose/install/

### Copy .env.example to .env
```sh
cp .env.example .env
```

### Fill script parameters in .env file
- **GRAFANA_ADMIN_USER** - Grafana admin user name
- **GRAFANA_ADMIN_PASSWORD** - Grafana admin password name

### Setup your `pool_id`
- Fill `{YourPoolId}`, example `bob.factory.shardnet.near` 
```sh
export POOL_ID={YourPoolId} && sed -i "s/klesh.factory.shardnet.near/$POOL_ID/g" ./grafana/dashboards/*.json
```

### Start
```sh
./start.sh
```

### Stop
```sh
./stop.sh
```

### Open Grafana
- Grafana will be available on `http://{Host.IP}:19000`

#### Extra metrics data
- You can get extra metrics such as Seat Price, Current Stake and more by using near-prometheus-exporter.
- https://github.com/masknetgoal634/near-prometheus-exporter


