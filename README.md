# Description

This is a repo to learn docker with some simple projects

# Architecture

## System

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

## Infrastructure

|Role|Hostname|FQDN|IP|OS|RAM|CPU|Storage|
|----|----|----|----|----|----|----|----|
|Master|k8s-master-1|master1.k8s.com|192.168.83.131|CentOS 7|4G|2x|20GB|
|Worker|k8s-worker-1|worker1.k8s.com|192.168.83.132|CentOS 7|4G|2x|20GB|
|Worker|k8s-worker-2|worker2.k8s.com|192.168.83.134|CentOS 7|2G|2x|20GB|

## Cluster

- Kubernetes Client: v1.17.1
- Kubernetes Server: v1.17.1
- Docker Client: v19.03.5
- Docker Server: v19.03.5
- Docker Compose: 1.22.0

## Integration

- Git: 1.8.3.1
- NPM: 6.13.4
- Nodejs: 12.14.1

## Images

- node:12.14.1-alpine
- postgres:12.1-alpine
- nginx:1.17.6-alpine
- traefik:v1.7
- kubernetesui/dashboard:v2.0.0-rc2

# Todo

|Module|Function|Feture|Action|
|---|---|---|---|
|DevOps|Upgrade|Version Control|Version number|
|DevOps|HA|Multi cluster nodes|Test|
|Database|Initial|Create Tables Structure|Implement|
|DevOps|Secret|used by database|Implement|

# Release Notes

## Version

## Functions & Features

### HA

### CI/CD

### Secret

### Persistent Storage

# Demo

## Docker Compose Mode

### Setup

Need to setup docker componse and cluster environment first.

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

## Update Ingress Resource

```
kubectl edit ing ingress-resource
```

## Upgrade

## Rollback

