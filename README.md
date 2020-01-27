# Description
This is a repo to learn docker with some simple projects

# System Modules

|tie|app|name|function|
|---|---|---|---|
|backend|postgres|dbpg|database|
|backend|redis|chrd|cache|
|backend|rabbit|mqrbt|MQ|
|backend|nestjs|restapi|restfulapi|
|backend|nodejs|worker|service worker|
|frontend|nginx|admin-antd|admin|
|frontend|nginx|demo-material|user|
|frontend|nginx|www|pages|

# Release Notes

## Version

## Docker Compose Mode

### Setup

> Need to setup docker componse environment first.

#### Clone

```
sh clone.dockerimages.sh
cd dockerimages
```

#### Build

```
yarn build
docker images
```

### Start

```
yarn start
docker ps
docker network ls
```

#### Check

- [Web Page](http://static.office.com)
- [API Result](http://api.office.com)

### Clean Up

```
docker stop dockerimages_frontend_1 dockerimages_restapi_1 dockerimages_dbpg_1
docker rm dockerimages_frontend_1 dockerimages_restapi_1 dockerimages_dbpg_1

docker network rm dockerimages_bridgenet
```

## Kubernetes Cluster Mode

### Setup

> Need to setup Kubernetes Cluster and Ingress first.

### Start

```
kubectl create -f all.yaml
```

### Clean Up

```
kubectl delete -f all.yaml
```
